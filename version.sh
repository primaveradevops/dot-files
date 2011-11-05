#!/bin/sh

basedir="$( cd -P "$( dirname "$0" )" && pwd )"

echo dot-files
hg id -n $basedir

for dir in $basedir/dot-*; do
    echo $dir | rev | cut -d "/" -f1 | rev
    hg id -n $dir
done
