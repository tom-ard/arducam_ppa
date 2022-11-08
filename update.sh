debs_path=$(pwd)/debs

debs=$(ls $debs_path)

for deb in $debs; do
    echo $deb
    if [[ "bullseye" == *$deb* ]];then
        reprepro --basedir $(pwd) includedeb bullseye $debs_path/$deb
    else
        reprepro --basedir $(pwd) includedeb linux $debs_path/$deb
    fi
done