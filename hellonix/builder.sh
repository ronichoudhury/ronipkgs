source ${stdenv}/setup

mkdir -p ${out}/bin
gcc -o ${out}/bin/hellonix ${src}
