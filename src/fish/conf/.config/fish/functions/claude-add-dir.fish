function claude-add-dir -d 'Select ghq repos and copy /add-dir command to clipboard'
    set -l query (commandline -b)
    [ -n "$query" ]; and set flags --query="$query"; or set flags

    set -l dirs (ghq list --full-path | fzf --multi --prompt='add-dir> ' --header='Select repos (TAB to multi-select)' $flags)
    if test (count $dirs) -eq 0
        echo "No repository selected."
        return 1
    end

    set -l cmds
    for d in $dirs
        set -a cmds "/add-dir $d"
    end
    printf '%s\n' $cmds | pbcopy
    printf '%s\n' $cmds
    echo ""
    echo "Copied to clipboard! Paste into Claude Code session."
end
