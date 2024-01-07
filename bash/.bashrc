#Local binaries path
if [ -d "$HOME/.local/bin/" ]; then
    PATH="$HOME/.local/bin/:$PATH"
fi


#LOCAL CUSTOM BINARIES PATH
if [ -d "$HOME/.bin/" ]; then
    PATH="$HOME/.bin/:$PATH"
fi

#GO BINARIES PATH
if [ -d "$HOME/.local/go/bin" ]; then
    export GOROOT=$HOME/.local/go
    export GOPATH=$HOME/go
    PATH=$GOPATH/bin:$GOROOT/bin:$PATH
fi

#POWERLINE.SH FOR BASH SHELL
if [ -f ~/.bash/powerline.sh ]; then
    . ~/.bash/powerline.sh
fi

#TASKFILE AUTOCOMPLETE
if [ -f ~/.bash/task.sh ]; then
    . ~/.bash/task.sh
fi

#TMUX CONFIG
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8