
mkdir -p shared
cp test.dbml shared/

cp *.dbml
docker run --rm -it \
       --workdir /srv \
       --name Sae51-ub \
       --mount type=bind,source=$(pwd)/shared,target=/srv \
       im_ubuntu bash
    
