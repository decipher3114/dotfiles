function fish_greeting
end

if status is-interactive
    function starship_transient_prompt_func
        starship module character
    end
    starship init fish | source
    enable_transience
end