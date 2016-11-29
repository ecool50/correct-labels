file=$1
while read line
do
	cd $line
	join -j 1 <(sort $line'_sorted_2.txt') <(sort $line'_sorted.txt') > $line'_joined.txt'
	cd ..
done <$file
