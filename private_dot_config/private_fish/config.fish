if status is-interactive

	direnv hook fish | source
	pyenv init - | source
	pyenv virtualenv-init - | source
	zoxide init fish | source
	starship init fish | source

	alias c="clear"
	alias ch="chezmoi"
	alias g="git"
	alias l="exa -l  --group-directories-first"
	alias v="nvim"
	alias s="kitty +kitten ssh"
end


