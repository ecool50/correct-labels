file=$1
while read line
do
	cd $line
	md5sum * | sort > $line'_sorted.txt'
	cd ..
done <$file
