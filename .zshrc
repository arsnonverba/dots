#color prompt
PROMPT='%F{blue}%n%f@%F{cyan}%m%f %B%~%b %F{blue}%#%f '
# wireguard
alias wgup="sudo wg-quick up /etc/wireguard/us109.conf"
alias wgdn="sudo wg-quick down /etc/wireguard/us109.conf"
alias wgups="sudo wg-quick up /etc/wireguard/wg0.conf"
alias wgdns="sudo wg-quick down /etc/wireguard/wg0.conf"

#kitty terminal issues with ssh
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

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
#shop
alias shop='/usr/bin/git --git-dir=$HOME/www/shop/.git/ --work-tree=$HOME/www/shop/'
#rysm
alias rysm='/usr/bin/git --git-dir=$HOME/www/rysm/.git/ --work-tree=$HOME/www/rysm/'
#luisgl
alias lgl='/usr/bin/git --git-dir=$HOME/www/luisgl/.git/ --work-tree=$HOME/www/luisgl/'
#typhoo
alias typh='/usr/bin/git --git-dir=$HOME/www/typhoo/.git/ --work-tree=$HOME/www/typhoo/'



#add cargo bin to path
export PATH="$HOME/.cargo/bin:$PATH"

#add auto suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#add syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
