status is-interactive; or return

# TokyoNight Night syntax & pager colors
set -g fish_color_normal c0caf5
set -g fish_color_command 7dcfff
set -g fish_color_keyword bb9af7
set -g fish_color_quote e0af68
set -g fish_color_redirection c0caf5
set -g fish_color_end ff9e64
set -g fish_color_error f7768e
set -g fish_color_param 9d7cd8
set -g fish_color_comment 565f89
set -g fish_color_match --background=brblue
set -g fish_color_selection --background=283457
set -g fish_color_search_match --background=283457
set -g fish_color_operator 9ece6a
set -g fish_color_escape bb9af7
set -g fish_color_autosuggestion 565f89
set -g fish_color_cwd_root bf616a
set -g fish_color_history_current e5e9f0 --bold
set -g fish_color_option bb9af7
set -g fish_color_status bf616a
set -g fish_color_valid_path --underline

set -g fish_pager_color_progress 565f89
set -g fish_pager_color_prefix 7dcfff
set -g fish_pager_color_completion c0caf5
set -g fish_pager_color_description 565f89
set -g fish_pager_color_selected_background --background=283457

# Git prompt settings
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1
set -g __fish_git_prompt_showupstream informative
set -g __fish_git_prompt_color_branch magenta --bold
set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green --bold
