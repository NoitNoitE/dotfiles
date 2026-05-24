# =============================================================================
#  TOOLS & ENVIRONMENT
# =============================================================================
if type -q zoxide
    zoxide init fish | source
end

if type -q dircolors
    eval (dircolors -c)
end

# =============================================================================
#  ALIASES
# =============================================================================
alias cd="z"
alias c="clear"
alias q="exit"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias ls="eza --icons --no-permissions"
alias vim="nvim"
alias sudo="sudo-rs"
alias sudoedit="sudoedit-rs"
alias visudo="visudo-rs"
alias su="su-rs"

function rf
	source ~/.config/fish/config.fish
end
function rhist
	eval $(history | fzf)
end
function chist
	history | fzf | wl-copy
end
function fcd
	cd $(fd --type d --hidden \
	--exclude ".git" \
	--exclude ".dotnet" \
	--exclude "debug"  \
	--exclude "bin"  \
	--exclude "obj"  \
	--exclude ".idea"  \
	--exclude ".fleet"  \
	--exclude "node_modules"  \
	--exclude "volumes"  \
	--exclude ".terraform"  \
	--exclude "Library"  \
	--exclude "Pictures"  \
	--exclude "Documents"  \
	--exclude ".local"  \
	--exclude ".nuget"  \
	--exclude ".npm"  \
	--exclude ".vscode"  \
	--exclude ".rustup"  \
	--exclude ".cargo"  \
	--exclude ".quokka"  \
	--exclude ".vscode-insiders" | fzf)
end

# =============================================================================
#  PROMPT
# =============================================================================
if type -q starship
    starship init fish | source
end

function fish_mode_prompt

end
funcsave fish_mode_prompt

function fish_right_prompt
    #fish_default_mode_prompt
end
funcsave fish_right_prompt

# =============================================================================
#  PLUGINS & KEY BINDINGS
# =============================================================================
set -g fish_key_bindings fish_vi_key_bindings
set -g fish_greeting

# =============================================================================
#  STARTUP VISUALS
# =============================================================================
if status is-interactive
    clear
    fastfetch
end
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
