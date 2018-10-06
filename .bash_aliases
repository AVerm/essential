alias todolist='vim ~/Desktop/Todo.txt'
alias asuserver='ssh -p 22 avermill@general.asu.edu'
alias net_test='ping 8.8.8.8 -f -i0.2'

journal() {
	NAME="$@"
	TITLE=`echo "$NAME" | sed 's/ //g'`
	SHORTDATE=`date +%Y%m%d`
	HYPHENDATE=`date +%F`
	FILENAME="${SHORTDATE}_${TITLE}.txt"

	echo $NAME >> $FILENAME
	echo $HYPHENDATE >> $FILENAME
	vim $FILENAME;
}

note() {
	SHORTDATE=`date +%Y%m%d`
	FILENAME="${SHORTDATE}notes.txt"

	vim $FILENAME;
}
