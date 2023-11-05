@{
    Name  = 'devblackops-emoji'
    DoNotUseGlyphs = $true
    Types = @{
        Link = '➡️'
        Directories = @{
            # Default directory icon
            ''        = '📁'
            symlink   = '🔗'
            junction  = '🔗'
            WellKnown = @{
                docs                    = '📚'
                documents               = '📚'
                desktop                 = '🖥️'
                benchmark               = '📈'
                contacts                = '📇'
                apps                    = '📱'
                applications            = '📱'
                artifacts               = '📦'
                shortcuts               = '🔗'
                links                   = '🔗'
                fonts                   = '🔤'
                images                  = '📷'
                photos                  = '📷'
                pictures                = '📷'
                videos                  = '📹'
                movies                  = '📹'
                media                   = '🖼️'
                music                   = '🎵'
                songs                   = '🎵'
                onedrive                = '☁️'
                downloads               = '⬇️'
                bin                     = '⚙️'
                tests                   = '🧪'
                windows                 = '🪟'
                users                   = '👥'
                favorites               = '⭐'
                '.vscode'               = '♾️'
                '.vscode-insiders'      = '♾️'
                '.git'                  = '🔶'
                '.github'               = '🐙'
                'github'                = '🐙'
                'node_modules'          = '📦'
                '.azure'                = '☁️'
                '.aws'                  = '☁️'
                '.kube'                 = '☸️'
                '.docker'               = '🐋'
            }
        }

        Files       = @{
            # Default file icon
            ''        = '📄'
            symlink   = '🔗'
            junction  = '🔗'
            WellKnown               = @{
                '.gitattributes'                = '🔶'
                '.gitconfig'                    = '🔶'
                '.gitignore'                    = '🔶'
                '.gitmodules'                   = '🔶'
                '.gitkeep'                      = '🔶'
                'git-history'                   = '🔶'
                'LICENSE'                       = '📜'
                'CHANGELOG.md'                  = '📝'
                'CHANGELOG.txt'                 = '📝'
                'CHANGELOG'                     = '📝'
                'README.md'                     = '📖'
                'README.txt'                    = '📖'
                'README'                        = '📖'
                'favicon.ico'                   = '⭐'
                '.gitlab-ci.yml'                = '🦊'
                '.jenkinsfile'                  = '🤵🏻'
                'jenkinsfile'                   = '🤵🏻'
                'bitbucket-pipelines.yml'       = '🪣'
                'bitbucket-pipelines.yaml'      = '🪣'
                '.azure-pipelines.yml'          = '💠'

                # Firebase
                'firebase.json'                 = '🔥'
                '.firebaserc'                   = '🔥'

                # Bower
                '.bowerrc'                      = '🦜'
                'bower.json'                    = '🦜'

                # Conduct
                'code_of_conduct.md'            = '🤝'
                'code_of_conduct.txt'           = '🤝'

                # Docker
                'Dockerfile'                    = '🐋'
                'docker-compose.yml'            = '🐋'
                'docker-compose.yaml'           = '🐋'
                'docker-compose.dev.yml'        = '🐋'
                'docker-compose.local.yml'      = '🐋'
                'docker-compose.ci.yml'         = '🐋'
                'docker-compose.override.yml'   = '🐋'
                'docker-compose.staging.yml'    = '🐋'
                'docker-compose.prod.yml'       = '🐋'
                'docker-compose.production.yml' = '🐋'
                'docker-compose.test.yml'       = '🐋'

                # Authors
                'authors'                       = '👤'
                'authors.md'                    = '👤'
                'authors.txt'                   = '👤'

                # Gradle
                'gradlew'                       = '🐘'
            }

            # Archive files
            '.7z'                   = '📦'
            '.bz'                   = '📦'
            '.tar'                  = '📦'
            '.zip'                  = '📦'
            '.gz'                   = '📦'
            '.xz'                   = '📦'
            '.br'                   = '📦'
            '.bzip2'                = '📦'
            '.gzip'                 = '📦'
            '.brotli'               = '📦'
            '.rar'                  = '📦'
            '.tgz'                  = '📦'

            # Executable things
            '.bat'                  = '⚙️'
            '.cmd'                  = '⚙️'
            '.exe'                  = '⚙️'
            '.pl'                   = '⚙️'
            '.sh'                   = '⚙️'

            # App Packages
            '.msi'                  = '📦'
            '.msix'                 = '📦'
            '.msixbundle'           = '📦'
            '.appx'                 = '📦'
            '.AppxBundle'           = '📦'
            '.deb'                  = '📦'
            '.rpm'                  = '📦'

            # PowerShell
            '.ps1'                  = '⚙️'
            '.psm1'                 = '⚙️'
            '.psd1'                 = '⚙️'
            '.ps1xml'               = '⚙️'
            '.psc1'                 = '⚙️'
            '.pssc'                 = '⚙️'

            # Not-executable code files
            '.dll'                  = '⚙️'

            '.csv'                  = '📊'
            '.tsv'                  = '📊'

            # Settings
            '.ini'                  = '📃'
            '.dlc'                  = '📃'
            '.config'               = '📃'
            '.conf'                 = '📃'
            '.properties'           = '📃'
            '.prop'                 = '📃'
            '.settings'             = '📃'
            '.option'               = '📃'
            '.reg'                  = '📃'
            '.props'                = '📃'
            '.toml'                 = '📃'
            '.prefs'                = '📃'
            '.sln.dotsettings'      = '📃'
            '.sln.dotsettings.user' = '📃'
            '.cfg'                  = '📃'

            '.csproj'               = '♾️'
            '.ruleset'              = '♾️'
            '.sln'                  = '♾️'
            '.slnf'                 = '♾️'
            '.suo'                  = '♾️'
            '.vb'                   = '♾️'
            '.vbs'                  = '♾️'
            '.vcxitems'             = '♾️'
            '.vcxitems.filters'     = '♾️'
            '.vcxproj'              = '♾️'
            '.vsxproj.filters'      = '♾️'

            # Database
            '.pdb'                  = '🛢️'
            '.sql'                  = '🛢️'
            '.pks'                  = '🛢️'
            '.pkb'                  = '🛢️'
            '.accdb'                = '🛢️'
            '.mdb'                  = '🛢️'
            '.sqlite'               = '🛢️'
            '.pgsql'                = '🛢️'
            '.postgres'             = '🛢️'
            '.psql'                 = '🛢️'
            '.db'                   = '🛢️'

            # Source Control
            '.patch'                = '🔶'

            # Project files
            '.user'                 = '♾️'
            '.code-workspace'       = '♾️'

            # Text data files
            '.log'                  = '📜'

            # Java
            '.jar'                  = '📦'
            '.gradle'               = '🐘'

            # Python
            '.py'                   = '🐍'
            '.ipynb'                = '📒'

            # Subtitle files
            '.srt'                  = '🎞️'
            '.lrc'                  = '🎞️'
            '.ass'                  = '🎞️'

            # HTML/css
            '.html'                 = '🌐'
            '.htm'                  = '🌐'
            '.xhtml'                = '🌐'
            '.html_vm'              = '🌐'
            '.asp'                  = '🌐'
            '.css'                  = '🌐'
            '.sass'                 = '🌐'
            '.scss'                 = '🌐'
            '.less'                 = '🌐'

            '.pdf'                  = '📑'

            # Excel
            '.xls'                  = '📊'
            '.xlsx'                 = '📊'

            # PowerPoint
            '.pptx'                 = '🖥️'
            '.ppt'                  = '🖥️'
            '.pptm'                 = '🖥️'
            '.potx'                 = '🖥️'
            '.potm'                 = '🖥️'
            '.ppsx'                 = '🖥️'
            '.ppsm'                 = '🖥️'
            '.pps'                  = '🖥️'
            '.ppam'                 = '🖥️'
            '.ppa'                  = '🖥️'

            # Word
            '.doc'                  = '📝'
            '.docx'                 = '📝'
            '.rtf'                  = '📝'

            # Audio
            '.mp3'                  = '🎵'
            '.flac'                 = '🎵'
            '.m4a'                  = '🎵'
            '.wma'                  = '🎵'
            '.aiff'                 = '🎵'
            '.wav'                  = '🎵'
            '.aac'                  = '🎵'
            '.opus'                 = '🎵'

            # Images
            '.png'                  = '🖼️'
            '.jpeg'                 = '🖼️'
            '.jpg'                  = '🖼️'
            '.gif'                  = '🖼️'
            '.ico'                  = '🖼️'
            '.tif'                  = '🖼️'
            '.tiff'                 = '🖼️'
            '.psd'                  = '🖼️'
            '.psb'                  = '🖼️'
            '.ami'                  = '🖼️'
            '.apx'                  = '🖼️'
            '.bmp'                  = '🖼️'
            '.bpg'                  = '🖼️'
            '.brk'                  = '🖼️'
            '.cur'                  = '🖼️'
            '.dds'                  = '🖼️'
            '.dng'                  = '🖼️'
            '.eps'                  = '🖼️'
            '.exr'                  = '🖼️'
            '.fpx'                  = '🖼️'
            '.gbr'                  = '🖼️'
            '.jbig2'                = '🖼️'
            '.jb2'                  = '🖼️'
            '.jng'                  = '🖼️'
            '.jxr'                  = '🖼️'
            '.pbm'                  = '🖼️'
            '.pgf'                  = '🖼️'
            '.pic'                  = '🖼️'
            '.raw'                  = '🖼️'
            '.webp'                 = '🖼️'
            '.svg'                  = '🖼️'

            # Video
            '.webm'                 = '📹'
            '.mkv'                  = '📹'
            '.flv'                  = '📹'
            '.vob'                  = '📹'
            '.ogv'                  = '📹'
            '.ogg'                  = '📹'
            '.gifv'                 = '📹'
            '.avi'                  = '📹'
            '.mov'                  = '📹'
            '.qt'                   = '📹'
            '.wmv'                  = '📹'
            '.yuv'                  = '📹'
            '.rm'                   = '📹'
            '.rmvb'                 = '📹'
            '.mp4'                  = '📹'
            '.mpg'                  = '📹'
            '.mp2'                  = '📹'
            '.mpeg'                 = '📹'
            '.mpe'                  = '📹'
            '.mpv'                  = '📹'
            '.m2v'                  = '📹'

            # Email
            '.ics'                  = '📅'

            # Certificates
            '.cer'                  = '📜'
            '.cert'                 = '📜'
            '.crt'                  = '📜'
            '.pfx'                  = '📜'

            # Keys
            '.pem'                  = '🔑'
            '.pub'                  = '🔑'
            '.key'                  = '🔑'
            '.asc'                  = '🔑'
            '.gpg'                  = '🔑'

            # Fonts
            '.woff'                 = '🔤'
            '.woff2'                = '🔤'
            '.ttf'                  = '🔤'
            '.eot'                  = '🔤'
            '.suit'                 = '🔤'
            '.otf'                  = '🔤'
            '.bmap'                 = '🔤'
            '.fnt'                  = '🔤'
            '.odttf'                = '🔤'
            '.ttc'                  = '🔤'
            '.font'                 = '🔤'
            '.fonts'                = '🔤'
            '.sui'                  = '🔤'
            '.ntf'                  = '🔤'
            '.mrg'                  = '🔤'

            # Docker
            '.dockerignore'         = '🐋'
            '.dockerfile'           = '🐋'

            # VSCode
            '.vscodeignore'         = '♾️'
            '.vsixmanifest'         = '♾️'
            '.vsix'                 = '♾️'
            '.code-workplace'       = '♾️'

            '.lock'                 = '🔒'

            # Bicep
            '.bicep'                = '💪'

            # Disk Image
            '.vmdk'                 = '💽'
            '.vhd'                  = '💽'
            '.vhdx'                 = '💽'
            '.img'                  = '💽'
            '.iso'                  = '💽'
        }
    }
}
