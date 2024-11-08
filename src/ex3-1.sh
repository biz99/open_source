i=1
count=${1:-10} 

while [ "$i" -le "$count" ];
do
	printf "hello world\n"
	i=$(($i + 1))
done

exit 0 
