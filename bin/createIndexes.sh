STARTING_DIR=`pwd`
INDEX=index.html
for dir in `find . -type d | grep pdf` ; do 
	cd $dir 
	echo "<html>" > $INDEX
	echo "<head><title>Directory listing of $dir</title></head>" >> $INDEX
	echo "<body>" >> $INDEX
	echo "    <ul>" >> $INDEX
	for file in `ls -1` ; do 
		if [ "$file" != "index.html" ] ; then
			if [ "$file" != "README.md" ] ; then
				echo "        <li><a href='$file'>$file</a></li>" >> $INDEX
			fi
		fi
	done
	echo "    </ul>" >> $INDEX
	echo "</body>" >> $INDEX
	echo "" >> $INDEX
	cd $STARTING_DIR
done 