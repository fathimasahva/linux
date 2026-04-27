if [ $# -eq 0 ]
then
echo "syntax is <$0><filename>"
exit 1
fi
if [ ! -f $1 ]
then
echo "file doesn't exist"
exit 1
fi
echo "----------original file contnt--------------"
cat $1
grep -v  -i "linux" $1 > temp.txt
mv temp.txt $1
echo "-----updating file contnt after deleting lines contain linux----"
cat $1
