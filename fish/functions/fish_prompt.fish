# Fish git prompt
set __fish_git_prompt_showdirtystate yes
set __fish_git_prompt_showstashstate yes
set __fish_git_prompt_showuntrackedfiles yes
set __fish_git_prompt_showupstream yes
set __fish_git_prompt_show_informative_status yes
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_untrackedfiles purple
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging magenta
set __fish_git_prompt_color_stashstate cyan
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red
# Status Chars
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_stagedstate '+'
set __fish_git_prompt_char_untrackedfiles '?'
set __fish_git_prompt_char_stashstate '≡'
set __fish_git_prompt_char_upstream_ahead '⇡'
set __fish_git_prompt_char_upstream_behind '⇣'
set __fish_git_prompt_char_upstream_equal ''

function fish_prompt
    # how many characters to show in the path when abbreviation dirs
    set -q fish_prompt_pwd_dir_length
    or set -lx fish_prompt_pwd_dir_length 0

    if test (id -u) -eq 0
        set suffix '#'
    else
        set suffix '$'
    end
    set -l status_color (set_color brgreen)
    set -l last_status $status
    set -l cwd_color (set_color blue)
    set normal (set_color normal)

    echo -s $cwd_color (prompt_pwd) $normal ' ' (fish_git_prompt)
    echo -n -s $status_color $suffix ' ' $normal
end
