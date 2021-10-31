function _check_dialog() {
    which dialog &>/dev/null
    if [ $? -ne 0 ]; then
        return 1
    else
        return 0
    fi
}

function _get_translate_word() {
    content=$1
    if [ ${#content} -eq 0 ]; then
        read -t 0 content
        if [ ${#content} -eq 0 ]; then
            content=$(pbpaste)
        fi
    fi
    echo $content
}

function _translate() {
    content=$1
    zh=$2
    if [ ${#content} -eq 0 ]; then
        echo '[Err][Translate Plugin] the words to translate is blank!'
        return 1
    fi
    width=100
    height=10
    if [ ${#content} -ge 60 ]; then
        title=''
        height=20
    else
        title=$content
        width=60
    fi
    result=$(python3 ~/.oh-my-zsh/plugins/translator/translator.py $(echo -n $content | base64) $zh)
    _check_dialog
    check_res=$?
    if [ $check_res -eq 0 ]; then
        if [ ${#title} -eq 0 ]; then
            dialog --ok-label 'CLOSE' --max-input 65535 --no-lines --scrollbar --noshadow --msgbox "$content\n\n$result" $height $width
        else
            dialog --ok-label 'CLOSE' --no-lines --title $title --scrollbar --noshadow --msgbox $result $height $width
        fi
    else
        echo $result
    fi
}

function tt() {
    content=$(_get_translate_word $*)
    _translate $content
}

function tZ() {
    content=$(_get_translate_word $*)
    _translate $content 'zh'
}

zle -N tt
bindkey 'TT' tt
