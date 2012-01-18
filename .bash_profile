# http://nathanhoad.net/git-bash-tab-completions-and-a-cool-prompt
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

export PS1='\n\[\e[36;1m\]\w\[\e[0m\] $(__git_ps1 "[\[\e[0;32m\]%s\[\e[0m\]\[\e[0;33m\]$(parse_git_dirty)\[\e[0m\]]")\n\$ \[\e[0m\]'

if [ $DROPBOX ] 
  then 
    export DROPBOX=$(cygpath $DROPBOX)
fi

if [ $PYTHONPATH ] 
  then 
    export PYTHONPATH=$(cygpath $PYTHONPATH)
fi

if [ $BOTO_CONFIG ] 
  then 
    export BOTO_CONFIG=$(cygpath $BOTO_CONFIG)
fi
