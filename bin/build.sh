set -eu

_build() {
	TAG=$1
	if [ $# -eq 2 ];then
		TAG=$2
	fi
	docker build . --no-cache=false -f Dockerfile/${1} -t tukiyo3/game-${TAG}
}

_build jsnes-web
