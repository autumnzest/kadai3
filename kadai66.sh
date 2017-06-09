#!/bin/sh
# check1
                if [ $# -lt 2 ]; then
                        echo "not enough numbers"
                        exit
                fi


# check3
if [ $1 -gt 0 ] 2>/dev/null ;then
        if [ $2 -gt 0 ] 2>/dev/null ;then
        	continue
	else
                echo "not numbers" 
                exit 
        fi
else
  echo "not numbers" 
  exit 
fi


                # check2
                if [ $# -gt 2 ]; then
                        echo "too many numbers"
                        exit 
                fi


##
gcd()
{
   if [ $2 -eq 0 ]; then
      echo $1
   else
      gcd $2 `expr $1 % $2`
   fi
}
gcd $1 $2
