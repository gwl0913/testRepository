#!/bin/bash

# output hellow world
echo 'Hello, world!'

echo '系统里的shells'
cat /etc/shells |grep '^.*$'

echo 当前shell
echo $SHELL 

# $HOME $SHELL $USER $PWD

# 变量的定义和取消
A=1
unset A
# 只读变量
readonly B=5

#特殊变量
    # $n $# $* $@ $?

    # expr 运算    
    echo expr `expr 2 + 3` \* 4
    #$[]
    echo $[(2+3)*4]

# 条件判断
#    [ ] 两侧有空格
#    [ ] && echo ok ||echo no   

#basename   取出文件名
#dirname    取出文件路径

#自定义函数
    # [ function ] funname[()]
    # 如果不加返回值, 取最后一条命令结果

function sum()
{
    s=0;
    s=$[$1+$2]
    echo $s
}

read -p 'input paramt 1: ' p1
read -p 'input paramt 2: ' p2
sum $p1 $p2


# shell 工具
    # cut  sed awk sort
        #cut -f -d
        
