mkdir -p shared/csv

docker run --rm -d \
   --name mysql_aa \
   --network sae \
   --env MYSQL_ROOT_PASSWORD=root \
   im_mysql --local-infile=1 --secure-file-priv=""



