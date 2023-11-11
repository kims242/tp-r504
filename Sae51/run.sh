
mkdir -p shared
#cp test.dbml shared/

docker run --rm -it \
       --name Sae51-ub \
       --mount type=bind,source=$(pwd)/shared,target=/srv \
       im_ubuntu /srv/dbml2sql.sh
