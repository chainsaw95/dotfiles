# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your oh-my-zsh installation.
export ZSH="/home/vek/.oh-my-zsh"
source ~/antigen.zsh
ZSH_THEME="powerlevel10k"

source $ZSH/oh-my-zsh.sh
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"


antigen use oh-my-zsh

antigen bundle git # autocompletions
antigen bundle pip # autocompletions
antigen bundle heroku # autocompletions
antigen bundle yarn # autocompletions and path
antigen bundle kubectl

antigen bundle pyenv
antigen bundle rbenv
antigen bundle lukechilds/zsh-nvm

antigen bundle command-not-found # suggests commands
antigen bundle z # jump around!
antigen bundle colored-man-pages # Neat man pages bro

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions # Game changer!


antigen bundle SinaKhalili/sina
antigen bundle SinaKhalili/ignore-dollarsign

antigen bundle desyncr/auto-ls 
antigen bundle andrewferrier/fzf-z 

antigen bundle voronkovich/gitignore.plugin.zsh 
antigen bundle zdharma/zsh-diff-so-fancy
antigen theme romkatv/powerlevel10k

antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
