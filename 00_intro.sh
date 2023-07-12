clear

cat 00_intro.txt
read line

clear
cat 03_sparklines.txt
read line

./01_example.sh

read line

clear
cat 01_photos.txt
read line

echo "Here's a half screen width test card"
convert 00_test_card.png -resize 350x^200 sixel:-
read line

echo "Now print out the moon landing photo:"

convert 01_moon_landing.png sixel:-
read line

echo "Now print the image full width:"
convert 00_test_card.png -resize $((10 *`tput cols`))x^200 sixel:-
read line

clear

cat 02_ghostscript.txt
read line

echo "This is what GhostScript outputs"
gs -q -r35x -dBATCH -sDEVICE=ln03 -sOutputFile=- tiger.eps

echo "And this is how ImageMagic renders tiger.eps"
convert tiger.eps -resize 350x^200 sixel:-
read line

clear
cat 04_web_pages.txt
read line

./02_grab_page.sh

read line

clear
cat 05_links.txt

read line
