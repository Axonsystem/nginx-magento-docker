docker run \
-v `pwd`/magento:/var/www \
-v `pwd`:/configs/ \
-p 80:80 \
--link mysql:db \
--name magento \
-ti nginx-magento
