# Magento - NginX - PHP-fpm 

This is a container built and optimized to run Magento quickly.

## Notable features:
- Comes with all the standard magento requirements built-in
- Symlinks all configuration files from /configs so, while testing/optimizing you can mount 
   the folder instead of having to rebuild the image

## Usage:

While recommended to check all configuration and rebuilding before using this in production
the image should work out of the box. 


## Building
  ```
  docker build -t nginx-magento .
  ```

## Setup database

Database is run from a separate container.

1. Create a container named `mysql` from this [guide](http://www.nkode.io/2014/09/12/easymysql.html).


## For development

1. Soft link to your Magento code base in `magento`
1. Run `run.sh`

## For production

1. Soft link to your Magento code base in `magento`
1. Run this

  ```
  docker run \
  -v `pwd`/magento:/var/www \
  -v `pwd`:/configs/ \
  --name magento \
  --link db:mysql \
  -d nginx-magento
  ```
