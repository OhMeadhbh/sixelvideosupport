# sixelvideosupport

Files I used in a YouTube video I made about SIXEL support in XTerm

This repo contains the files I used to make the video at:

  https://youtu.be/DF5z6ZO8H60

With the exception that it doesn't include tiger.eps as I'm
frightened by the AGPL license.  But you can download that
file as part of the ghostscript package at:

  https://www.ghostscript.com/releases/gsdnld.html

If you want to replicate what I did for the video, append
the contents of the Xresources.fragments file to your
~/.Xresources file and run the command:

  xrdb -merge < ~/.Xresources

If you want your instance of xterm to look like a VT220
or VT240, look at the video at:

  https://youtu.be/KptcwA6yIhQ