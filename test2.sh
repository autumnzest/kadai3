#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
}

#########
# test2 #
#########

echo "too many numbers" > $tmp-ans
./kadai66.sh 22 33 44 >$tmp-err || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST2-2"

echo OK
rm -f $tmp-*
exit 0
~
~

