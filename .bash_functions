function md() {
  mkdir -p $1 && cd $_
}

function ai2pdf() {
  gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=$2 $1
}
