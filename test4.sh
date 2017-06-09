#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
}
#########
# test4 #
#########
echo 11 > $tmp-ans
./kadai66.sh 33 44 > $tmp-out || ERROR_EXIT "TEST4-1"
diff $tmp-ans $tmp-out || ERROR_EXIT "TEST4-2"

echo OK
rm -f $tmp-*
exit 0
