mkdir -p csv

docker run --rm -d \
   --name mariadb_aa \
   --env MARIADB_ROOT_PASSWORD=root \
   -v mariadb-data:/var/lib/mariadb/ \
   --mount type=bind,source=$(pwd)/csv,target=/srv/csv \
   im_mariadb
