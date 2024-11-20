echo "start program"
echo "We're in function"

if [ "$1" = "-l" ]; then
	ls $1
else
	ls
fi

echo "finish program"

exit 0
