sudo docker run --rm  -d \
	--name dolibarr_aa \
    -p 80:80 \
	--env DOLI_DB_TYPE=mysqli \
	--env DOLI_DB_HOST=172.19.0.2 \
	--env DOLI_DB_NAME=dolibarr \
	--env DOLI_DB_PORT=3306 \
	--env DOLI_DB_USER=root \
	--env DOLI_DB_PASSWORD=root \
	--env DOLI_MODULES=modSociete \
	--env DOLI_ADMIN_LOGIN=admin \
	--env DOLI_ADMIN_PASSWORD=dolibarr \
	--env APACHE_SERVER_NAME=localhost \
	--network sae \
	upshift/dolibarr

