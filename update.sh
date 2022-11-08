debs_path=$(pwd)/debs

debs=$(ls $debs_path)

for deb in $debs; do
    echo $deb
    if [[ $deb == *"bullseye"* ]];then
        reprepro --basedir $(pwd) includedeb bullseye $debs_path/$deb
    elif [[ $deb == *"nvidia"* ]];then
        if [[ $deb == *"nx"* ]];then
            reprepro --basedir $(pwd) --component nx includedeb Jetson $debs_path/$deb
        elif [[ $deb == *"nano"* ]];then
            reprepro --basedir $(pwd) --component nano includedeb Jetson $debs_path/$deb
        fi
    else
        reprepro --basedir $(pwd) includedeb linux $debs_path/$deb
    fi
done