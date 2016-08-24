# The following lines were added by compinstall

# go
#
export PATH=$PATH:$HOME/bin:$HOME/.go/bin:/var/lib/gems/1.8/bin

export GOPATH=$HOME/.go


# branch view
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
      '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
      '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/Users/xtakei/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# added by travis gem
[ -f /Users/xtakei/.travis/travis.sh ] && source /Users/xtakei/.travis/travis.sh
