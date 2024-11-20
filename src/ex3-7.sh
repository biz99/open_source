i=0
fie="files"

if [ ! -d "$fie" ]; then
    mkdir "$fie"
fi

if [ -f "$1" ]; then
	printf "mk"
	while [ "$i" -lt 5 ]; do
		mkdir "$1/file$i"
        	ln -s "$1/file$i/file$i.txt" "$1/file$i/file$i.txt"
        	i=$((i + 1)) 
	done
else
	while [ "$i" -lt 5 ]; do
		mkdir "$fie/file$i"
        	ln -s "$fie/file$i/file$i.txt" "$fie/file$i/file$i.txt" 
        	i=$((i + 1)) 
	done
fi

exit
