if status is-interactive
    # Убираем стандартное приветствие
    set -g fish_greeting ""
    # Настройка цветов (оттенки серого и белый)
    set -g fish_color_normal dddddd
    set -g fish_color_command ffffff --bold
    set -g fish_color_quote bbbbbb
    set -g fish_color_redirection aaaaaa
    set -g fish_color_end 888888
    set -g fish_color_error ff5555 # Оставим красный для ошибок (важно!)
    set -g fish_color_param cccccc
    set -g fish_color_comment 666666
    set -g fish_color_autosuggestion 888888
    fastfetch
    # Простой и чистый промпт (приглашение)
    function fish_prompt
        set_color 888888
        echo -n (prompt_pwd)
        set_color ffffff
        echo -n " » "
        set_color normal
    end
end

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec start-hyprland
    end
end
