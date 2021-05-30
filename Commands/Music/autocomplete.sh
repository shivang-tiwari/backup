_completion() {
  local CUR=${COMP_WORDS[COMP_CWORD]}
  local OPT
  local -a OPTS

  while read -r OPT; do
    local OPT_ESC
    OPT_ESC="$(printf '%q' "$OPT")"
    [[ -z "$CUR" ]] || [[ "$OPT_ESC" == "$CUR"* ]] && \
      COMPREPLY+=("$OPT_ESC")
  done < <(cat /home/shivang/Projects/Commands/Music/list_songs.txt)
}
complete -F _completion play
