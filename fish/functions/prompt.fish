set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
# set __fish_git_prompt_show_informative_status 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging magenta
set __fish_git_prompt_color_stashstate magenta
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

# how many characters to show in the path when abbreviation dirs
# set fish_prompt_pwd_dir_length 0

function fish_prompt
  if test (id -u) -eq 0
    set prompt_symbol '#'
    set prompt_symbol_color red
  else
    set prompt_symbol '$'
    set prompt_symbol_color magenta
  end

  set last_status $status

  #set_color $fish_color_cwd
  set_color blue
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s' (__fish_git_prompt)
  set_color -o $prompt_symbol_color
  printf '\n%s ' $prompt_symbol
  set_color normal
end
