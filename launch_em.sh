#!/bin/bash
/Applications/Emacs.app/Contents/MacOS/Emacs $1 &
#  while :
#  do
#      process_id=`ps | grep Emacs | grep $1 | awk '{print $1}'`
#     if [ ${#process_id} != 0 ]; then
#         break
#     fi
# done
## 同名プロセスが複数ある場合の為にトリミング
# process_id=`echo ${process_id} | awk '{print $1}'`
# sleep 4s
# echo "
# tell application \"System Events\"
# 	set theprocs to every process whose unix id is "${process_id}"
# 	repeat with proc in theprocs
# 		set the frontmost of proc to true
# 	end repeat
# end tell
# " | osascript -
sleep 3s
osascript -e 'tell application "Emacs" to activate'
