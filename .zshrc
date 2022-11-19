# wireguard
alias wgup="sudo wg-quick up us190"
alias wgdn="sudo wg-quick down us190"
alias wgupsapporo="sudo wg-quick up wg0"
alias wgdnsapporo="sudo wg-quick down wg0"


# navigation aliases
alias www="cd ~/www/"
alias art="cd ~/art/"
alias ux="cd ~/ux/"

# alies fot git dotfiles
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'

#alias for git sites
#meow
alias meow='/usr/bin/git --git-dir=$HOME/www/meow/.git/ --work-tree=$HOME/www/meow/'

#add cargo bin to path
export PATH="$HOME/.cargo/bin:$PATH"
