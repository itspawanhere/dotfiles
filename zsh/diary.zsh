#!/bin/sh
# Where your notes live
export NOTES="${NOTES:-$HOME/.Notes}"

# Quick jump
alias notes='cd "$NOTES"'

# --- helpers ---------------------------------------------------------------

# open the file at the end, editor-aware
_open_at_end() {
  local file="$1"
  local ed="${EDITOR:-$2}"

  case "$ed" in
    *nvim|*vim)   command "$ed" + "$file" ;;                     # go to last line
    *nano)        command "$ed" +999999,1 "$file" ;;
    *code)        command code -g "$file:999999" ;;
    *subl)        command subl "$file:999999" ;;
    *mate)        command mate -l 999999 "$file" ;;
    *)            command "$ed" "$file" ;;                       # fallback
  esac
}

# compute YYYY-MM-DD (macOS/BSD date)
_diary_resolve_date() {
  local when="$1"
  case "$when" in
    ""|"today")      date +"%Y-%m-%d" ;;
    "yesterday")     date -v -1d +"%Y-%m-%d" ;;
    [0-9][0-9][0-9][0-9]-[0-1][0-9]-[0-3][0-9]) echo "$when" ;;
    *) echo "Usage: diary [today|yesterday|YYYY-MM-DD]" >&2; return 1 ;;
  esac
}

# --- main command ----------------------------------------------------------

diary() {
  local when="${1:-today}"
  local target_date
  target_date=$(_diary_resolve_date "$when") || return 1

  # Break out parts
  local year month month_name
  year="${target_date%%-*}"
  month="${target_date#*-}"; month="${month%%-*}"

  # Full English month name (ensure English even if your locale differs)
  month_name=$(LC_ALL=C date -j -f "%Y-%m-%d" "$target_date" +%B)

  # Paths
  local dir="$NOTES/diary/$year/$month_name"
  local file="$dir/notes.md"

  mkdir -p "$dir"

  # Entry header lines based on target date + current time
  local date_line time_line
  date_line=$(date -j -f "%Y-%m-%d" "$target_date" "+# %d-%m-%Y")
  time_line=$(date "+TIME: %H:%M:%S")

  # Ensure trailing newline if file exists but has none
  if [[ -f "$file" ]] && [[ -n "$(tail -c 1 "$file" 2>/dev/null)" ]]; then
    printf "\n" >> "$file"
  fi

  # Append header (blank line before if file already has content)
  if [[ -s "$file" ]]; then
    printf "\n%s\n%s\n\n" "$date_line" "$time_line" >> "$file"
  else
    printf "%s\n%s\n\n" "$date_line" "$time_line" > "$file"
  fi

  # Open ready to type at the end
  _open_at_end "$file"
}

# Convenience aliases
alias yesterday='diary yesterday'
alias today='diary today'
