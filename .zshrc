correct=1
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
### COLORS ###
fg_green=$'%{\e[0;32m%}'
fg_blue=$'%{\e[0;34m%}'
fg_cyan=$'%{\e[0;36m%}'
fg_red=$'%{\e[0;31m%}'
fg_brown=$'%{\e[0;33m%}'
fg_purple=$'%{\e[0;35m%}'

fg_light_gray=$'%{\e[0;37m%}'
fg_dark_gray=$'%{\e[1;30m%}'
fg_light_blue=$'%{\e[1;34m%}'
fg_light_green=$'%{\e[1;32m%}'
fg_light_cyan=$'%{\e[1;36m%}'
fg_light_red=$'%{\e[1;31m%}'
fg_light_purple=$'%{\e[1;35m%}'

fg_no_color=$'%{\e[0m%}'
fg_white=$'%{\e[1;37m%}'
fg_black=$'%{\e[0;30m%}'

MYPROMPT="${fg_green}%n${fg_no_color}@${fg_green}%m${fg_no_color}:${fg_brown}%~${fg_no_color}%# "
PROMPT="${fg_green}%n${fg_no_color}@${fg_green}%m${fg_no_color}:${fg_brown}%~${fg_no_color}%# "
PROMPT_SUBST=1
PS1="I$MYPROMPT"
function use_gpu { xrandr --setprovideroffloadsink Nvidia-0 Intel; xcompmgr -c &; DRI_PRIME=1 $@; killall xcompmgr; }
#ls
alias ls='ls -F --color'
alias ll='ls -lhF'
alias la='ls -AhF'
alias l='ls -F --color'

# rm
alias rmr='rm -Rfv'

#cp
alias cpr='cp -Rv'
alias vcp='rsync -rvP --partial'
alias cps='rsync -rvP --partial'

#ssh
alias sshp="ssh -p 4132"
alias scpp="scp -r -P 4132"
alias sa='ssh-add'
alias sy='ssh -Y'
alias syc="ssh -Y rainer@cluster"
alias sshtor='ssh -L 9091:127.0.0.1:9091 rainer@cluster'
alias sshwwad='ssh -p 4132 -D 1234 -C -N maxi@wwad.de'
alias aterm='aterm -tr -trsb -sh 30 -fn 6x13 -sb -sr -st'

#mplayer
#alias m='mplayer -softvol -softvol-max 300'
#alias mplayer='mplayer -softvol -softvol-max 300'
#alias mo='optirun mplayer -softvol -softvol-max 300'
#alias mplayer='mplayer -softvol -softvol-max 300'
alias m='mpv'
alias gpumplayer='mplayer -vo vdpau -vc ffh264vdpau -framedrop -softvol -softvol-max 300'
alias fastmplayer='mplayer -vfm ffmpeg -lavdopts fast:skiploopfilter=all -framedrop -softvol -softvol-max 300'

#cd
alias cds='pwd > /tmp/lastdir'
alias cdl='cd `cat /tmp/lastdir`'
alias cd1='cd ..'
alias cd2='cd ../..'
alias cd3='cd ../../..'
alias pd='pushd'
alias fd='popd'
alias c='cd'

#git:
alias g='git'
alias gf='git fetch --all'
alias gk='gitk --all'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gm='git merge'
alias ga='git add'

#wget
alias wget='wget --no-check-certificate'

#nautilus
alias nautilus='nautilus --no-desktop'

#sudo
alias s='sudo'
alias so='sudo optirun'

alias n='sudo netcfg'
alias v='cd /home/max/vpnp; sudo openvpn AirVPN_Europe_TCP-80.ovpn'
alias vd='sudo vpnc-disconnect'
alias vk='sudo killall vpnc'
alias me='sudo chmod u=rwx'
alias clock='sudo ntpdate pool.ntp.org'
alias wlan='sudo wifi-select wlan0'
alias lock='i3lock -d -c003366'
alias ndel='sudo rm /var/lib/dhcpcd/*'
alias klog='sudo tail -f /var/log/kernel.log'
alias cpu='watch grep \"cpu MHz\" /proc/cpuinfo'
alias 7='7z  x'
alias p='sudo pacman'
alias pu='sudo pacman -Syu'
alias mwin='sudo mount /dev/sda2 1/'
alias umwin='sudo umount /dev/sda2'
alias m1='sudo mount /dev/sdb1 1'
alias um1='sudo umount 1' 
alias x='xinit'
alias a='alsamixer'
alias y='yaourt'
alias yud='yaourt -Syu --devel --aur'
alias yu='yaourt -Syu --aur --noconfirm'
alias h='systemctl poweroff'
alias hb='systemctl hibernate'
alias mc='sudo macchanger -r wlan0'
alias smb='sudo /etc/rc.d/samba start'
alias br='sudo br'
alias mpdf='pdftk *.pdf cat output merged.pdf'
alias rb='systemctl reboot'
alias yn='yaourt -S firefox-nightly --noconfirm'
alias cin='/usr/local/bin/Cinderella2&'
alias o='optirun'
alias ocin='optirun /usr/local/bin/Cinderella2&'
#alias ff='optirun firefox-nightly >/dev/null 2>&1 &'
alias maple='wine .wine/drive_c/Program\ Files\ \(x86\)/Maple\ 12/bin.win/maplew.exe'
alias omaple='optirun wine .wine/drive_c/Program\ Files\ \(x86\)/Maple\ 12/bin.win/maplew.exe'
alias nvidia='optirun nvidia-settings -c :8'
alias ut='optirun wine .wine/drive_c/Program\ Files\ \(x86\)/UT/System/UnrealTournament.exe&'
alias bb='sudo rc.d restart bumblebeed'
alias euklid='wine .wine/drive_c/Program\ Files\ \(x86\)/DynaGeo/DynaGeo.exe'
alias ybb='yaourt bbswitch'
alias stel='optirun stellarium'
alias sshs='sudo sshs'
alias sshds='sudo systemctl start sshd'
alias cip='nxclient CIP.nxs&'
alias cdimage='dd if=/dev/cdrom of=cdrom.img'
alias scan='sudo iwlist wlp3s0 scan'
alias astore='sudo alsactl -f /var/lib/alsa/asound.state store'
alias xinfo='xwininfo'
alias push='~/pushscript/push4'
alias amok='/opt/AmokExifSorter/Exifsorter.sh'
alias adhoc='sudo create_ap wlp3s0 enp0s20u2u1 wifi godlike! -w 2'
alias adhocv='sudo create_ap wlp3s0 tun0 wifi godlike! -w 2'
alias adhoco='sudo create_ap wlp3s0 lo wifi godlike! -w 2'

alias hdmi='xrandr --output HDMI1 --auto --output LVDS1 --off; feh --bg-tile black.png'
alias hdmi2='xrandr --output LVDS1 --auto --output HDMI1 --auto --left-of LVDS1; feh --bg-tile black.png'
alias hdmi3="xrandr --output LVDS1 --mode '1366x768' --output HDMI1 --mode '1366x768'; feh --bg-tile black.png"
alias vga3="xrandr --output LVDS1 --mode '1366x768' --output VGA1 --mode '1366x768'; feh --bg-tile black.png"
alias vga4="xrandr --output LVDS1 --mode '1024x768' --output VGA1 --mode '1024x768'; feh --bg-tile black.png"
#alias vga='xrandr --output VGA1 --auto --output LVDS1 --off; feh --bg-tile black.png'
alias vga='xrandr --output DP2 --auto'
#alias vga2='xrandr --output LVDS1 --auto --output VGA1 --auto --left-of LVDS1; feh --bg-tile black.png'
alias vga2='xrandr --output eDP1 --auto --primary --output DP2 --auto --right-of eDP1'
alias vgam1="xrandr --output LVDS1 --mode '1366x768' --output HDMI1 --mode '1366x768'; feh --bg-tile black.png"
alias vgam2="xrandr --output LVDS1 --auto --output HDMI1 --auto; feh --bg-tile black.png"

alias vgain="xinput --map-to-output 10 eDP1; xinput --map-to-output 11 eDP1; xinput --map-to-output 16 eDP1"

alias nb='xrandr --output LVDS1 --auto --output VGA1 --off --output HDMI1 --off; feh --bg-tile wallpaperresized.jpg'

alias km='setxkbmap de'
alias rsyncssh='rsync -avzh --partial --progress -e ssh'
alias srsyncssh='sudo rsync -avzh --partial --progress -e ssh'
alias wp='feh --bg-tile ~/wallpaper.jpg'
alias mnas='sudo mount  //nas.ads.mwn.de/gu32kab /home/max/nas -o username=gu32kab,domain=ADS,rw,nounix,iocharset=utf8,file_mode=0777,dir_mode=0777'
#alias ftb='optirun java -jar ~/Dropbox/FTB/FTB1.2.4.jar&'
alias mo='sudo mount -o rw,umask=000'
alias ddwatch='watch --interval=1 pkill -USR1 dd'
alias g496='pwd >/tmp/blubdir; cd /home/max/geant4.9.6-install/bin; . /home/max/geant4.9.6-install/bin/geant4.sh; cd /home/max/root; . /home/max/root/bin/thisroot.sh; cd `cat /tmp/blubdir`; rm /tmp/blubdir'
alias mcm='cmake -DGeant4_DIR=/home/max/geant4.9.6-install/lib64/Geant4-9.6.1 $HOME/masterarbeit/UCNTransport '
alias grepr='grep -ri --exclude tags'
alias testrun='./UCNtransport ~/masterarbeit/UCNTransport/novis.mac maxitest.root'
alias testrunv='./UCNtransport ~/masterarbeit/UCNTransport/3d.mac maxitest.root'
alias debugrun='rm callgrind*; valgrind --tool=callgrind ./UCNtransport ~/masterarbeit/UCNTransport/novis.mac maxitest.root; kcachegrind callgrind.out.*'
alias mm='make -j4'
alias mrr='make -j4; ./UCNtransport ~/masterarbeit/UCNTransport/novis.mac maxitest.root; root spintest.C'
alias simcity='optirun wine ~/.wine/drive_c/Program\ Files\ \(x86\)/Maxis/SimCity\ 4\ Deluxe/Apps/SimCity\ 4.exe -CustomResolution:enabled -r1366x768x32 -intro: off -w'
alias home='sudo netctl start home'
alias trud='sudo netctl start trud'
alias black='libreoffice ~/black.pps'
alias cls='clear'
alias dstats='dstat -cndpmgs --top-bio --top-cpu'
alias cdk='cd /home/max/Dropbox/StRef/Karlsgymnasium'
alias cdt='cd /home/max/Dropbox/StRef/Trudering'
alias cda='cd /home/max/Dropbox/StRef/Asam2'
alias cdg='cd /home/max/Dropbox/wgg'
alias cdsim='cd /home/max/Dropbox/StRef/Simulation/Hausarbeit'
alias main='evince main.pdf&; vim main.tex'
alias tou='s rmmod hid_multitouch; s modprobe hid_multitouch;'
alias tp='s rmmod psmouse;  s modprobe psmouse;'
alias air='air.sh'

alias convertepub2mobi='for book in *.epub; do echo "Converting $book"; ebook-convert "$book" "$(basename "$book" .epub).mobi"; done'

alias ulha='ncftpput -v -u "mastermax1988" -p "godlike!" mastermax1988.bplaced.net /hausarbeit/ ~/hausarbeit/Simulation/*'
alias prox='export http_proxy=http://max.huber:godlike%21@proxy:8080; export https_proxy=$http_proxy; export ftp_proxy=$http_proxy'
alias noprox='unset http_proxy; unset https_proxy; unset ftp_proxy'

alias mouse='sudo modprobe -r psmouse; sudo modprobe psmouse'

#alias mvn='mv ~/Downloads/noten_* ~/Dropbox/StRef/Trudering/Noten'
alias mvn='mvn.sh'
alias noten='cd /home/max/rpi_sync/Noten; python server.py'
zmodload -i zsh/complist
# 2005-02-27: Navigation im Completion-Menü. GENIAL!
# Navigation in der Completion-Liste (Tab-Tab): hjkl wählt aus, Return fügt ein
# und beendet das Menü (wobei es weiterhin angezeigt wird) und i fügt ein und
# lässt das Menü offen, um eine weitere Vervollständigung einzufügen.
# Die Befehle funktionieren nur, *nachdem* zsh/complist geladen wurde!
bindkey -M menuselect 'h' vi-backward-char                # links
bindkey -M menuselect 'j' vi-down-line-or-history         # unten
bindkey -M menuselect 'k' vi-up-line-or-history           # oben
bindkey -M menuselect 'l' vi-forward-char                 # rechts
# Fügt die Completion auf der Kommandozeile ein, lässt aber das Menü
# für eine Weitere Vervollständigung offen.
bindkey -M menuselect 'i' accept-and-menu-complete
# Fügt die Completion auf der Kommandozeile ein und zeigt dann ein
# Menü mit weiterhin möglichen Completions. "Engere Auswahl"
bindkey -M menuselect 'o' accept-and-infer-next-history







bindkey '^[[7~' beginning-of-line
bindkey '^[[8~' end-of-line
bindkey '^?' backward-delete-char



setopt appendhistory extendedglob
unsetopt beep
export EDITOR=vim

bindkey -v


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle ':completion:*' expand prefix
zstyle ':completion:*' format 'completing %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=1 #menu ab 1 eintrag anzeigen
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/max/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

background() {
  "$@" >/dev/null 2>&1 &
}
alias -s pdf='background evince'
alias -s tex=vim
alias -s txt=vim
alias -s c=vim
alias -s cpp=vim
alias -s ps=evince
alias -s jpg=eog
alias -s png=eog
alias -s svg=inkscape
alias -s JPG=eog

export MANPATH=$MANPATH:/usr/share/man
#coloured manpages:

export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
    vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
    -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
    -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

function zle-line-init zle-keymap-select {
   VVV="${${KEYMAP/vicmd/N}/(main|viins)/I}"
   PS1=$VVV$MYPROMPT
   PS2=$PS1
   zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
