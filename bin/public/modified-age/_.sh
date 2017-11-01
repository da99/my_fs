
# === {{CMD}}  FILENAME
# === Returns 0 if file does not exist.
modified-age () {

  local +x FILENAME="$1"; shift

  if [[ ! -e "$FILENAME" ]]; then
    echo "0"
    return 0
  fi

  local +x NOW="$(date +"%s")"
  local +x THEN="$(stat -c %Y "$FILENAME")"
  echo $(( NOW - THEN ))
} # === end function
