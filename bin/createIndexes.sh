STARTING_DIR=`pwd`
INDEX=index.html
for dir in `find . -type d` ; do 
	cd $dir 
	echo "<head><title>Directory listing of $dir</title></head>" > $INDEX
	echo "<body>" >> $INDEX
	for file in `ls -1` ; do 
		if [ "$file" != "index.html" ] ; then
			echo "<h2><a href='$file'>$file</a></h2>" >> $INDEX
		fi
	done
	echo "</body>" >> $INDEX
	echo "" >> $INDEX
	cd $STARTING_DIR
done 