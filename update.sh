debs_path=$(pwd)/debs

debs=$(ls $debs_path)

for deb in $debs; do
    echo $deb
    reprepro --basedir $(pwd) includedeb linux $debs_path/$deb
done