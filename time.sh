if [ $# -ne 0 ]
then 
echo "Syntax is <$0> [<time>]"
exit 1
fi
T=`date +%H`
if [ $T -ge  0 -a $T -lt 12 ]
then
echo "good morning"

elif [ $T -ge 12 -a $T -lt 16 ]
then
echo "good afternoon"

elif [ $T -ge 16 -a $T -lt 20 ]
then 
echo "good evening"

else

echo "good night"
fi
