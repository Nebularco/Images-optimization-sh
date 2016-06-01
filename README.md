# Images-optimization-sh

Optimizing images inside a folder in the console linux

## jpg and png

# Dependencies

  - Use system opertative Linux

  - install jpegoptim

    To install the program on Debian/Ubuntu:

      $ sudo apt-get install jpegoptim

    To install on Fedora/RedHat/Centos:

      $ sudo yum install jpegoptim
    
  - install optipng 
    
    The command to install optipng on Debian/Ubuntu is:

      $ sudo apt-get install optipng
    
    For Fedora/Centos/RedHat, execute:

      $ sudo yum install optipng
    
# Use

  - Run in terminal
  
  sh compressImages.sh folderName
  
  - Optional params (jpeg compression ratio)
  
  sh compressImages.sh folderName 80

### Code

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
