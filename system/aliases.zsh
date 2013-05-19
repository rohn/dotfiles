# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# the infamous Paul Irish "server" function
function server() {
	local port="${1:-8000}"
	python -m SimpleHTTPServer "$port"
	open "http://localhost:${port}/"
}
