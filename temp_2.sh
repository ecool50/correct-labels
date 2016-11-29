file=$1
while read line
do 	
	cd $line
	cp /home/elijah/Desktop/elija/resized_dataset_mapping/$line/$line* $line'_sorted_2.txt'
	cd ..
done <$file 
