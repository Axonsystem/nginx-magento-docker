docker run -ti \
-v `pwd`/magento:/var/www \
-v `pwd`:/configs/ \
-p 8080:80 \
-p 3306:3306 \
--name magento
nginx-magento bash
