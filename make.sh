#!/bin/bash

echo "-- cleaning up..."
rm -f *.html

echo "-- generating..."
ronn --html --style=toc --manual="LIBMPDATA++" --organization="University of Warsaw" libmpdata++.ronn
ronn --html --style=toc --manual="LIBCLOUDPH++" --organization="University of Warsaw" libcloudph++.ronn
ronn --html --manual="" --organization="University of Warsaw" foss.ronn

echo "-- uploading..."
scp libmpdata++.html slayoo@burza.igf.fuw.edu.pl:~/LIBMPDATAXX/index.html
scp libcloudph++.html slayoo@burza.igf.fuw.edu.pl:~/LIBCLOUDPHXX/index.html
scp foss.html slayoo@burza.igf.fuw.edu.pl:~/FOSS/index.html
