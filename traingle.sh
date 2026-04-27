
if [ $# -ne 3 ]
then
 echo "syntax is <$0> <Number>"
exit 1
fi
a=$1
b=$2
c=$3
if [ $a -gt $b ]
then
temp=$a
a=$b
b=$temp
fi
if [ $b -gt $c ]
then
 temp=$b
 b=$c
 c=$temp
fi
if [ `expr $a + $b`  -gt $c ]
then
 echo "triangle will be formed"
else
 echo "triangle will not be formed"
 exit 1
fi
if [ $a -eq $b -a $b -eq $c ]
then
  echo "Traingle is equilateral"
elif [ $((a*a + b*b)) -eq $((c*c)) ]
then
 echo "right angled triangle"
elif [ $a -eq $b -o $a -eq $c -o  $b -eq $c ]
then

 echo "Triangle is isosceles"

else
 echo "It is a normal traingle"
fi
exit 0
   















