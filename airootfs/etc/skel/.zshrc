# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# synatx-highlighting
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



#Display ISO version and distribution information in short
alias version="sed -n 1p /etc/os-release && sed -n 7p /etc/os-release && sed -n 8p /etc/os-release"

#Pacman Shortcuts
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"

# keyboard ctrl+arrow key issue solved
bindkey '^[[1;5C' forward-word  # Ctrl+Right arrow
bindkey '^[[1;5D' backward-word # Ctrl+Left arrow

