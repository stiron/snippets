_android_mount_completion ()
{
  local cur prev opts
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  opts="mount umount --help"
  
  case $prev in
    mount)
      M_OPTS="--silent --verbose"
      COMPREPLY=( $(compgen -W "${M_OPTS}" -- ${cur}) )
      return 0
    ;;
    umount)
      U_OPTS="--force --verbose"
      COMPREPLY=( $(compgen -W "${U_OPTS}" -- ${cur}) )
      return 0
    ;;
  esac

  if [[ ${cur} == * ]] ; then
      COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
      return 0
  fi
}
complete -o filenames -A file -F _android_mount_completion android-mount
