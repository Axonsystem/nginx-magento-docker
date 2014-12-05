docker run -i -t \
-v `pwd`/magento:/var/www \
-v ~/.ssh/authorized_keys:/root/.ssh/authorized_keys \
-v `pwd`:/configs/ \
--link mysql:db \
-p 8080:80 -p 2222:22 \
ykgoon/magento bash
