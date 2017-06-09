#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
}



echo "not numbers" > $tmp-ans
./kadai66.sh a b > $tmp-err || ERROR_EXIT "TEST3-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST3-2"

echo OK
rm -f $tmp-*
exit 0
