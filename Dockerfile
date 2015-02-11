from ubuntu:14.04.1

MAINTAINER YK Goon <ykgoon@gmail.com>

RUN apt-get update

# install and configure nginx
RUN apt-get install -y nginx
RUN mkdir /var/www

# install some convenience tools
RUN apt-get install -y nano curl

# install MySQL
RUN apt-get install -y mysql-client

ADD nginx/nginx.conf /etc/nginx/
ADD nginx/sites-available/magento /etc/nginx/sites-available/default

# install and configure php-fpm
RUN apt-get install -y php5-fpm php5-mysql php5-curl php5-mcrypt php5-gd mcrypt

ADD php5/php.ini /etc/php5/fpm/php.ini
ADD php5/php-fpm.conf /etc/php5/fpm/php-fpm.conf
ADD php5/pool.d/www.conf /etc/php5/fpm/pool.d/www.conf

ADD . /configs

RUN ln -sf /configs/nginx/nginx.conf /etc/nginx/nginx.conf
RUN ln -sf /configs/nginx/sites-available/magento /etc/nginx/sites-enabled/default
RUN ln -sf /configs/php5/php.ini /etc/php5/fpm/php.ini
RUN ln -sf /configs/php5/php-fpm.conf /etc/php5/fpm/php-fpm.conf
RUN ln -sf /configs/php5/pool.d/www.conf /etc/php5/fpm/pool.d/www.conf

EXPOSE 80

CMD bash -C '/configs/start.sh';'bash'
