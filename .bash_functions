function md() {
  mkdir -p "$1" && cd "$_"
}

function ai2pdf() {
  gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile="$1.pdf" "$1"
}

function clean_linux_kernels() {
  dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge
}

function killprt() {
  netstat -nlp 2> /dev/null | grep $1 | tr -s ' ' | cut -d " " -f 7 | cut -d "/" -f 1 | xargs kill -9
}
