
# === {{CMD}}  FILE1 ">|<|=="  "FILE2"
compare-age () {
  local +x FILE1="$1"; shift
  local +x COMPARE="$1"; shift
  local +x FILE2="$1"; shift

  local +x AGE1="$(stat -c "%Y" "$FILE1")"
  local +x AGE2="$(stat -c "%Y" "$FILE2")"

  case "$COMPARE" in
    ">")
      [[ "$AGE1" -gt "$AGE2" ]]
      ;;

    "<")
      [[ "$AGE1" -lt "$AGE2" ]]
      ;;

    *)
      echo "!!! Invalid option: $COMPARE" >&2
      exit 2
      ;;
  esac

} # === end function
