if [ $# -ne 3 ]
then 
echo "system is <$0> <no1><opr><no2>"
exit 1
fi
no1=$1
opr=$2
no2=$3
case $opr in
+) ans=`expr $no1 + $no2`;;
-) ans=`expr $no1 - $no2`;;
"*") ans=`expr $no1 "*" $no2`;;
/) ans=`expr $no1 / $no2`;;
%) ans=`expr $no1 % $no2`;;
esac
echo $ans
