#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT(){
        echo "$1" >&2
        rm -f $tmp-*
        exit 1
}
#########
# test1 #
#########
echo "not enough numbers" > $tmp-ans
./kadai66.sh 2 > $tmp-err || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0
~                                                                               
~            
