# Completion for jiostb

# Subcommands
complete -c jiostb -f -n '__fish_use_subcommand' -a 'dns' -d 'View / change Private DNS (Cloudflare, etc.)'
complete -c jiostb -f -n '__fish_seen_subcommand_from dns' -a 'cloudflare' -d 'Cloudflare 1.1.1.1'
complete -c jiostb -f -n '__fish_seen_subcommand_from dns' -a 'family' -d 'Cloudflare Family (Malware + Adult block)'
complete -c jiostb -f -n '__fish_seen_subcommand_from dns' -a 'adguard' -d 'AdGuard (Ad-blocking DNS)'
complete -c jiostb -f -n '__fish_seen_subcommand_from dns' -a 'google' -d 'Google DNS (8.8.8.8)'
complete -c jiostb -f -n '__fish_seen_subcommand_from dns' -a 'off' -d 'Disable Private DNS'

complete -c jiostb -f -n '__fish_use_subcommand' -a 'stats' -d 'View RAM, ROM/Storage & CPU stats'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'monitor' -d 'Live updating system monitor (like htop)'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'scrcpy' -d 'Mirror screen using scrcpy'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'mirror' -d 'Mirror screen using scrcpy'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'debloat' -d 'Permanently disable Reliance launcher & bloat'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'shell' -d 'Open interactive ADB shell'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'install' -d 'Install an APK to JioSTB'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'ip' -d 'Print device IP:PORT'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'reconnect' -d 'Force network rescan & reconnect'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'reboot' -d 'Reboot the JioSTB'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'logcat' -d 'View device logcat'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'push' -d 'Push file to device'
complete -c jiostb -f -n '__fish_use_subcommand' -a 'pull' -d 'Pull file from device'

# Auto-complete APK files after install
complete -c jiostb -n '__fish_seen_subcommand_from install' -k -a '(__fish_complete_suffix .apk)' -d 'APK file'
