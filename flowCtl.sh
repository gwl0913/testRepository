#!/bin/bash

# if 后有空格 [ ]两侧有空格
if [ $1 -eq 1 ]
then
    echo eq1
elif [ $1 -eq 2 ]
then
    echo 'eq2'
fi

#    case
    # case $变量名 in

case $1 in
1)
    echo one
;;  
2)
    echo tow
 ;;
*)
    echo default
;;
esac    

# for((    ))
# do
# done
s=0
for((i=1;i<5;i++))
do
    s=$[$s+$i]
done
echo "for add result: $s"

# for p in list
for p in $@
do
    echo "input paramer $p"
done

# for p in $*
# do
#     echo "input paramer $p"
# done

# for p in "$@"
# do
#     echo "input paramer $p"
# done

# for p in "$*"
# do
#     echo "input paramer $p"
# done

# whie [ ]
s=0
i=1
while [ $i -le 100 ]
do
    s=$[$s + $i]
    i=$[$i + 1]
done
echo "1 plus to 100 is: $s"