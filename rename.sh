#!/bin/sh
cd "$*"
# mkdir PNG > /dev/null 2>&1
# mv *.[pP][nN][gG] PNG > /dev/null 2>&1
TARGET_BODY=*
TARGET_LIST=`ls -1F | egrep -v '[/]|Thumbs.db'`;
for TARGET in $TARGET_LIST
do
  EXT=`echo $TARGET | awk -F. '{print $2}'`
  SRCNAME=$TARGET
#  DST=`exiftool -DateTimeOriginal $TARGET | cut -c35- | sed 's/://g' | sed 's/ /_/g'`
#  if [ -z $DST ]; then
    DST=`stat -f "%SB" -t "%Y%m%d_%H%M%S" $TARGET`
#  fi
  DSTNAME=$DST.$EXT
  for i in `seq 1 9`
  do
    if [ -f $DSTNAME ]; then
      DSTNAME=${DST}_$i.$EXT
    else
      break
    fi
  done
  echo $SRCNAME to $DSTNAME
  mv -n $SRCNAME $DSTNAME
done
