if status is-interactive
# Commands to run in interactive sessions can go here
end

# Abbreviations
abbr -a vol 'flatpak run com.saivert.pwvucontrol'
abbr -a vim 'nvim'
abbr -a note 'nvim ~/Documents/Notes/system.md'
abbr -a sdf 'ssh vein@sdf.org'
abbr -a whatbox 'ssh waffen@atlantis.whatbox.ca'
abbr -a jellyseerr 'ssh swanson@jellyseerr.burgerland.org'
abbr -a ipa "ip addr show | grep 'inet ' | grep -v '127.0.0.1' | cut -d' ' -f6" 
abbr -a autorem 'orphans=$(pacman -Qdtq); [ -z "$orphans" ] && echo "There are no orphaned packages" || sudo pacman -Rsc $orphans'
abbr -a ls 'ls -al --color=auto'
abbr -a grep 'grep --color=auto'
abbr -a dots wmenu-dots
abbr -a wow 'cd "~/.local/share/Steam/steamapps/compatdata/3636132228/pfx/drive_c/Program Files (x86)/World of Warcraft/_retail_/Interface"'
abbr -a i2p 'ssh -fTNL 4444:127.0.0.1:4444 -L 7070:127.0.0.1:7070 -L 7659:127.0.0.1:7659 -L 7660:127.0.0.1:7660 swanson@i2p.burgerland.org'
abbr -a chromium 'chromium --proxy-server="http://127.0.0.1:4444"'

# Color the hostname prompt in SSH
if set -q SSH_TTY
  set -g fish_color_host brred
end
