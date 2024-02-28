#!/usr/bin/env zsh

# Path to the cheat.sheets repository
CHEAT_SHEETS_PATH="/Users/pranavsukumaran/cheat.sheets/sheets"

# Use fzf to select a language or command
selected=$(cat ~/.tmux-cht-languages ~/.tmux-cht-command | fzf --height=40% --border)

# Exit if nothing is selected
if [[ -z $selected ]]; then
    exit 0
fi

# Check if the selection is a language or command
if grep -qs "^$selected$" ~/.tmux-cht-languages; then
    if [[ "$selected" == "python" ]]; then
        tmux neww zsh -c "curl -s cht.sh/python/:learn | less"
        exit 0
    fi

    # Check if the directory for the selected language exists
    if [[ -d "$CHEAT_SHEETS_PATH/_$selected" ]]; then
        # Fetch topics for the selected language
        topics=$(ls "$CHEAT_SHEETS_PATH/_$selected/" | fzf --height=40% --border)

        # Exit if no topic is selected
        if [[ -z $topics ]]; then
            tmux neww zsh -c "curl -s cht.sh/$selected | less"
            exit 0
        fi

        # Fetch the cheat sheet for the selected topic
        tmux neww zsh -c "cat '$CHEAT_SHEETS_PATH/_$selected/$topics' | less"
    else
        # If the directory doesn't exist, open the main cheat sheet page for the language
        tmux neww zsh -c "curl -s cht.sh/$selected | less"
    fi
else
    # Prompt for query
    read "query?Enter Query (leave empty for full cheat sheet): "

    # For commands, show the cheat sheet or specific query
    if [[ -z $query ]]; then
        tmux neww zsh -c "curl -s cht.sh/$selected~ | less"
    else
        query=$(echo $query | tr ' ' '+')
        tmux neww zsh -c "curl -s cht.sh/$selected~$query | less"
    fi
fi

