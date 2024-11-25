# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ping='ping -c3'
alias vim='nvim'
#alias code='/home/adith/vscode/VSCode-linux-x64/bin/code'
alias zulu='/home/adith/zulu/zulu17.34.19-ca-jdk17.0.3-linux_x64/bin/java'
PS1='[\e[1;32m\u\e[m@\h \W]\$ '

export NO_AT_BRIDGE=1 



# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
