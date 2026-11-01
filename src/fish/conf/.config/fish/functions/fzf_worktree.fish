function fzf_worktree
    set -l git_root (git rev-parse --show-toplevel 2>/dev/null)
    if test -z "$git_root"
        return 1
    end

    # git worktree list のパス一覧
    set -l paths (git worktree list 2>/dev/null | awk '{print $1}')

    # .claude/worktrees/ 内のディレクトリも追加（重複除外）
    set -l claude_wt_dir "$git_root/.claude/worktrees"
    if test -d "$claude_wt_dir"
        for dir in $claude_wt_dir/*/
            set -l dir (string trim --right --chars=/ -- $dir)
            if not contains -- $dir $paths
                set -a paths $dir
            end
        end
    end

    set -l worktree (printf '%s\n' $paths | fzf --prompt="Worktree> ")
    if test -n "$worktree"
        cd $worktree
        commandline -f repaint
    end
end
