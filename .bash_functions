function md() {
  mkdir -p "$1" && cd "$_"
}

function ai2pdf() {
  gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile="$1.pdf" "$1"
}

function killprt() {
  DIE=$(netstat -nlp 2> /dev/null | grep ^tcp | grep $1 | tr -s ' ' | cut -d " " -f 7)
  if [[ -z "$DIE" ]];then
    echo "No process found."
  else
    echo "Killing $DIE"
    echo $DIE | cut -d "/" -f 1 | xargs kill -9
  fi
}

function ngrokhttp() {
  ngrok http $1 --region eu
}

function genpasswd() {
    local l=$1
    [ "$l" == "" ] && l=16
    LC_ALL=C tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}
