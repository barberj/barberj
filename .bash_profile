# http://nathanhoad.net/git-bash-tab-completions-and-a-cool-prompt
# http://stackoverflow.com/questions/4569463/autocomplete-git-in-mac-os-not-working
# https://raw.github.com/git/git/master/contrib/completion/git-completion.bash

# file for git auto completion
if [ -f ~/.git-completion.sh ]
    then
        source ~/.git-completion.sh
fi

# add usr specific executables
#if [ -d ~/bin ]
#    then
#        export PATH=/~/bin:$PATH
#fi

# note on putting local paths before system path
# http://daniel.hepper.net/blog/2011/02/change-order-of-path-entries-on-mac-os-x/

# add usr specific executables
if [ -d /usr/local/sbin ]
    then
        export PATH=/usr/local/sbin:$PATH
fi

if [ -d /usr/local/lib/node_modules ]
    then
        export PATH=/usr/local/lib/node_modules:$PATH
fi


# http://stackoverflow.com/questions/2056137/how-to-run-mvim-macvim-from-terminal
# override the vim in the terminal
alias vim='mvim -v'

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

# add files for database maintenance
source ~/Dropbox/Pictage/utils/dbs.sh

# grep options
export GREP_OPTIONS='--color=auto --exclude=*.pyc'
