mkdir -p shared/csv

docker run --rm -d \
   --name mysql_aa \
   --network sae \
   --env MYSQL_ROOT_PASSWORD=root \
   im_mysql 

mysql -h 127.0.0.1 -u root -p'root' -P 3306 -e  < bdd1.sql

