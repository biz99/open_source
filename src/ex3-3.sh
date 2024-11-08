result=$(( ( $1 * 100000 ) / ( $2 * $2 ) ))

if [ $result -ge 230 ]; then
	printf "high weight\n" 
elif [ $result -le 185 ]; then
	printf "low weight\n"
else
	printf "middle weight\n"
fi
