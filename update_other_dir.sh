#!/bin/sh
## \file update_other_dir.sh
## 
## \author Jean-Baptiste Laurent
## \<jeanbaptiste.laurent.pro@gmail.com\>
## 
## \date Started on  Sat Apr  4 15:42:49 2015 Jean-Baptiste Laurent
## \date Last update Mon Apr 20 16:54:30 2020 Jean-Baptiste Laurent
## \brief File description to place here
##

mod_name="SkulkWithShotgun"
base_dir="/media/NS2/DIR_SkulkWithShotgun/"
if [ $# -eq 1 ]
then
    # rm -vrf $base_dir${mod_name}/*
    # rm -rf $base_dir${mod_name}_production/output/
    # mkdir -p $base_dir${mod_name}_production/output/
    # echo "Remove done"
    ##
    rsync --exclude=".git" --exclude="maps" --delete-excluded --delete --progress -vcr ./* $base_dir/${mod_name}_production/output/ 

    cp .modinfo $base_dir/${mod_name}_production/output/
fi

rsync --exclude=".git" --exclude="maps" --delete-excluded --delete --progress -vcr ../${mod_name}/ $base_dir/${mod_name}/
echo "Copy done"

# if [ $# -eq 1 ]
# then
#     rm -vrf $base_dir${mod_name}/*
#     echo "Remove done"
# fi
# cp -vru ../${mod_name}/ $base_dir
# echo "Copy done"
