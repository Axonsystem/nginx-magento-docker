# Magento - NginX - PHP-fpm 

This is a container built and optimized to run Magento quickly.

## Notable features:
- Comes with all the standard magento requirements built-in
- Symlinks all configuration files from /configs so, while testing/optimizing you can mount 
   the folder instead of having to rebuild the image

## Usage:

While recommended to check all configuration and rebuilding before using this in production
the image should work out of the box. 


building

  docker build -t nginx-magento .

while developing:

  soft link to your Magento code base in `magento`

  docker run \
  -v `pwd`/magento:/var/www \
  -v `pwd`:/configs/ \
  --name magento \
  -ti nginx-magento

  or execute `run.sh`

normal run

  soft link to your Magento code base in `magento`

  docker run \
  -v `pwd`/magento:/var/www \
  -v `pwd`:/configs/ \
  --name magento \
  -d nginx-magento
