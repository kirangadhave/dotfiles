export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

function zz() {
  cd "$(_z -l 2>&1 | sed 's/^[0-9,.]* *//' | fzf -q "$_last_z_args")"
}


function cd() {
    if [[ "$#" != 0 ]]; then
        builtin cd "$@";
        return
    fi
    while true; do
        local lsd=$(echo ".." && ls -p | grep '/$' | sed 's;/$;;')
        local dir="$(printf '%s\n' "${lsd[@]}" |
            fzf --reverse --preview '
                __cd_nxt="$(echo {})";
                __cd_path="$(echo $(pwd)/${__cd_nxt} | sed "s;//;/;")";
                echo $__cd_path;
                echo;
                ls -p --color=always "${__cd_path}";
        ')"
        [[ ${#dir} != 0 ]] || return 0
        builtin cd "$dir" &> /dev/null
    done
}


function fkill() {
    local pid 
    if [ "$UID" != "0" ]; then
        pid=$(ps -f -u $UID | sed 1d | fzf -m | awk '{print $2}')
    else
        pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')
    fi  

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi  
}

function fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

function vg() {
    local file
    if [[ -z $1 ]]
    then
    file="$(
        rg --files | fzf -0 -1
    )"
    else
    file="$(
        rg --files | fzf -0 -1 -q "$1"
    )"
    fi 

    if [[ -n $file ]]
    then
        nvim "$file"
    fi
}

function vgl() {
    local file
    local line
    if [[ -z $1 ]]
    then
        echo "Enter search term"
        return -1
    fi

    if [[ -z $2 ]]
    then
        echo "Enter line number"
        return -1
    fi


    if ! [[ "$2" = <-> ]]
    then
        echo "Enter valid number"
        return -1
    fi


    read -r file line <<<"$(rg --files | fzf -0 -1 -q "$1")"

    if [[ -n $file ]]
    then
        nvim $file +$2
    fi

}
