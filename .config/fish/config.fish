if status is-interactive
    # No greeting
    set fish_greeting

    # Use starship
    function starship_transient_prompt_func
        starship module character
    end

    if test "$TERM" != linux
        starship init fish | source
        enable_transience
    end

    # Colors
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    alias pamcan pacman
    alias q 'qs -c ii'
    alias jiostb '~/.local/bin/jiostb'

    if test "$TERM" != linux
        alias ls 'eza --icons=auto'
    end

    if test "$TERM" = xterm-kitty
        alias ssh 'kitten ssh'
    end

    # Shift+Enter inserts newline
    function __shift_enter_newline
        commandline -i \n
    end

    bind \e\[13\;2u __shift_enter_newline
end

# Paths
fish_add_path ~/.local/bin

# Claude Code custom endpoint
set -x ANTHROPIC_BASE_URL http://localhost:20128
set -x ANTHROPIC_AUTH_TOKEN your-token-here
