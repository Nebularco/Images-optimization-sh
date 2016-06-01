#!/bin/bash
#optimize_images

if [ -d $1 ];
then
  #echo "Sí, sí existe."
  for image in $(find $1 -name "*.jpg" );
  do
    #echo "$image"
    jpegoptim --strip-all --all-progressive --max=90 "$image"
  done
  for image in $(find $1 -name "*.png" );
  do
      optipng -o2 -strip all -clobber "$image"
    done
else
  echo "No existe el directorio"
fi
exit
