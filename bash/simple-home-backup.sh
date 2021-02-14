#!/bin/bash

POSITIONAL=()
while [[ $# -gt 0 ]]
do
  key="$1"

  case $key in
    -d|--dest)
      DEST_PATH="$2"
      shift
      shift
      ;;
    -f|--filelist)
      FILE_LIST="$2"
      FILEDIR_LIST=$(<$FILE_LIST)
      shift
      shift
      ;;
    *)
      POSITIONAL+=("$1")
      shift
      ;;
  esac
done

set -- "${POSITIONAL[@]}"

echo "DEST          = ${DEST_PATH}"
echo "FILELIST      = ${FILE_LIST}"


if [[ $DEST_PATH == $HOME ]] ; then
  echo "Sync to $HOME"
else
  if [[ ! -d $DEST_PATH/$USER ]] ; then
    echo "Creating Backup dest dir: $DEST_PATH/$USER"
    mkdir -p $DEST_PATH/$USER
  fi
fi


for dir in ${FILEDIR_LIST[@]}; do
  # TODO: review rsync command. corrupt data
  #rsync -avuP $HOME/$dir $DEST_PATH/$USER
done
echo "Backup sync done!"
