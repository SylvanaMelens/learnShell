#In this exercise, you will need to compare three list of arrays and write the common elements of all the three arrays:

a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7) 

for i in "${a[@]}" ; do
    in=false
    for j in "${b[@]}" ; do
        if [ $i = $j ] ; then
            k[${#k[@]}]=$i
        fi
    done
done
for l in "${c[@]}" ; do
    in=false
    for m in "${k[@]}" ; do
        if [ $l = $m ] ; then
            result[${#result[@]}]=$m
        fi
    done
done
echo $result
