function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status

    set -l color_cwd $fish_color_cwd
    set -l suffix '$'
    if functions -q fish_is_root_user; and fish_is_root_user
        set -q fish_color_cwd_root; and set color_cwd $fish_color_cwd_root
        set suffix '#'
    end

    set_color $color_cwd
    echo -n (prompt_pwd)
    set_color normal

    printf '%s ' (fish_vcs_prompt)

    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color --bold $fish_color_status)
    echo -n (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)
    set_color normal

    echo -n "$suffix "
end
