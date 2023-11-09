
mkdir -p shared
#cp test.dbml shared/

cp *.dbml shared/
docker run --rm -it \
       --name Sae51-ub \
       --mount type=bind,source=$(pwd)/shared,target=/srv \
       im_ubuntu bash
