docker run -it \
       --workdir /srv \
       --name Sae51-ub \
       --mount type=bind,source=$(pwd),target=/srv \
       im_ubuntu dbml2sql.sh
    
