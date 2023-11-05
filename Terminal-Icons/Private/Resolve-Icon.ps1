function Resolve-Icon {
    [OutputType([hashtable])]
    [CmdletBinding()]
    param(
        [Parameter(Mandatory, ValueFromPipeline)]
        [IO.FileSystemInfo]$FileInfo,

        [string]$IconTheme = $script:userThemeData.CurrentIconTheme,

        [string]$ColorTheme = $script:userThemeData.CurrentColorTheme
    )

    begin {
        $icons  = $script:userThemeData.Themes.Icon[$IconTheme]
        $colors = $script:colorSequences[$ColorTheme]
        $doNotUseGlyphs = $icons.DoNotUseGlyphs
        $linkIconName = if ($icons.Types.Link) { $icons.Types.Link } else { 'nf-md-arrow_right_thick' }
        $linkIcon = if ($doNotUseGlyphs) { $linkIconName } else { $glyphs[$linkIconName] }
        $fallbackDirectoryIcon = if ($doNotUseGlyphs) { '📁' } else { $glyphs['nf-oct-file_directory'] }
        $fallbackFileIcon = if ($doNotUseGlyphs) { '📄' } else { $glyphs['nf-fa-file'] }
    }

    process {
        $displayInfo = @{
            Icon     = $null
            Color    = $null
            Target   = ''
        }

        if ($FileInfo.PSIsContainer) {
            $type = 'Directories'
        } else {
            $type = 'Files'
        }

        switch ($FileInfo.LinkType) {
            # Determine symlink or junction icon and color
            'Junction' {
                if ($icons) {
                    $iconName = $icons.Types.($type)['junction']
                } else {
                    $iconName = $null
                }
                if ($colors) {
                    $colorSeq = $colors.Types.($type)['junction']
                } else {
                    $colorSet = $script:colorReset
                }
                $displayInfo['Target'] = ' ' + $linkIcon + ' ' + $FileInfo.Target
                break
            }
            'SymbolicLink' {
                if ($icons) {
                    $iconName = $icons.Types.($type)['symlink']
                } else {
                    $iconName = $null
                }
                if ($colors) {
                    $colorSeq = $colors.Types.($type)['symlink']
                } else {
                    $colorSet = $script:colorReset
                }
                $displayInfo['Target'] = ' ' + $linkIcon + ' ' + $FileInfo.Target
                break
            } default {
                if ($icons) {
                    # Determine normal directory icon and color
                    $iconName = $icons.Types.$type.WellKnown[$FileInfo.Name]
                    if (-not $iconName) {
                        if ($FileInfo.PSIsContainer) {
                            $iconName = $icons.Types.$type[$FileInfo.Name]
                        } elseif ($icons.Types.$type.ContainsKey($FileInfo.Extension)) {
                            $iconName = $icons.Types.$type[$FileInfo.Extension]
                        } else {
                            # File probably has multiple extensions
                            # Fallback to computing the full extension
                            $firstDot = $FileInfo.Name.IndexOf('.')
                            if ($firstDot -ne -1) {
                                $fullExtension = $FileInfo.Name.Substring($firstDot)
                                $iconName = $icons.Types.$type[$fullExtension]
                            }
                        }
                        if (-not $iconName) {
                            $iconName = $icons.Types.$type['']
                        }

                        # Fallback if everything has gone horribly wrong
                        if (-not $iconName) {
                            if ($FileInfo.PSIsContainer) {
                                $iconName = $fallbackDirectoryIcon
                            } else {
                                $iconName = $fallbackFileIcon
                            }
                        }
                    }
                } else {
                    $iconName = $null
                }
                if ($colors) {
                    $colorSeq = $colors.Types.$type.WellKnown[$FileInfo.Name]
                    if (-not $colorSeq) {
                        if ($FileInfo.PSIsContainer) {
                            $colorSeq = $colors.Types.$type[$FileInfo.Name]
                        } elseif ($colors.Types.$type.ContainsKey($FileInfo.Extension)) {
                            $colorSeq = $colors.Types.$type[$FileInfo.Extension]
                        } else {
                            # File probably has multiple extensions
                            # Fallback to computing the full extension
                            $firstDot = $FileInfo.Name.IndexOf('.')
                            if ($firstDot -ne -1) {
                                $fullExtension = $FileInfo.Name.Substring($firstDot)
                                $colorSeq = $colors.Types.$type[$fullExtension]
                            }
                        }
                        if (-not $colorSeq) {
                            $colorSeq = $colors.Types.$type['']
                        }

                        # Fallback if everything has gone horribly wrong
                        if (-not $colorSeq) {
                            $colorSeq = $script:colorReset
                        }
                    }
                } else {
                    $colorSeq = $script:colorReset
                }
            }
        }
        if ($iconName) {
            $displayInfo['Icon'] = if ($doNotUseGlyphs) { $iconName } else { $glyphs[$iconName] }
        } else {
            $displayInfo['Icon'] = $null
        }
        $displayInfo['Color'] = $colorSeq
        $displayInfo
    }
}
