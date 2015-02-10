docker run \
-v `pwd`/magento:/var/www \
-v `pwd`:/configs/ \
-p 80:80 \
-p 3306:3306 \
--name magento \
-ti nginx-magento
