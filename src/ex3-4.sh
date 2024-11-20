echo "linux is fun? (yes / no)"
read result

case "$result" in
	Yes)
		echo "yes";;
	Y)
		echo "yes";;
	No)
		echo "no";;
	nonono)
		echo "no";;
	*)
		echo "please write yes or no";;
esac
