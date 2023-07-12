URL=${1:-https://en.wikipedia.org/wiki/Sixel}
COLS=`tput cols`
ROWS=$(( `tput lines` - 1 ))

if [ "$COLS" -gt "96" ]
then
    COLS=96
fi

TMPPGM=`mktemp -u --suffix .pgm`

#echo $URL $COLS $ROWS $TMPPGM
wkhtmltoimage --width $(($COLS * 15)) --crop-y 0 --crop-h $(($ROWS * 30)) "$URL" $TMPPGM > /dev/null 2>&1
convert $TMPPGM -resize $(( $COLS * 10 ))x^200 sixel:-
rm $TMPPGM
