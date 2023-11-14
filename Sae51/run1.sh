mkdir -p shared/csv

docker run -d \
   --name mysql_aa \
   --env MYSQL_ROOT_PASSWORD=root \
   --mount type=bind,source=$(pwd)/shared,target=/srv \
   im_mysql --local-infile=1 --secure-file-priv=""
