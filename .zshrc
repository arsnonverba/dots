# wireguard
alias wgup="sudo wg-quick up /etc/wireguard/us109.conf"
alias wgdn="sudo wg-quick down /etc/wireguard/us109.conf"
alias wgups="sudo wg-quick up /etc/wireguard/wg0.conf"
alias wgdns="sudo wg-quick down /etc/wireguard/wg0.conf"


# navigation aliases
alias www="cd ~/www/"
alias art="cd ~/art/"
alias ux="cd ~/ux/"

# alias fot git dotfiles
alias dots='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'

#alias for git sites
#meow
alias meow='/usr/bin/git --git-dir=$HOME/www/meow/.git/ --work-tree=$HOME/www/meow/'
#metamural
alias meta='/usr/bin/git --git-dir=$HOME/www/nftmarketplace/.git/ --work-tree=$HOME/www/nftmarketplace/'
#elprincipio
alias prin='/usr/bin/git --git-dir=$HOME/www/elprincipio/.git/ --work-tree=$HOME/www/elprincipio/'

#add cargo bin to path
export PATH="$HOME/.cargo/bin:$PATH"
