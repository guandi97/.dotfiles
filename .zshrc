# The following lines were added by compinstall

#zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix
#zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=* l:|=*'
#zstyle :compinstall filename '/home/derpy/.zshrc'

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install

glow() {
	if [[ -z $1 ]]; then
		~/bin/glow
	else
		sudo ~/bin/glow $1
	fi
}

alias wine32="WINEARCH=win32 WINEPREFIX='/home/derpy/.wine32' wine"
alias winetricks32="WINEARCH=win32 WINEPREFIX='/home/derpy/.wine32' winetricks"

PATH=$(cat ~/.path | tr '\n' ':')
