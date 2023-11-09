
mkdir -p shared
#cp test.dbml shared/

cp *.dbml shared/
docker run -it \
       --workdir /srv \
       --name Sae51-ub \
       --mount type=bind,source=$(pwd)/shared,target=/srv \
       im_ubuntu
    
