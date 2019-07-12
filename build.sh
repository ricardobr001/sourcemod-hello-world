# Recovering current folder
folder=$(pwd | awk -F "/" '{printf $NF}')

# Delete and create the directory
rm -rf ../compiled/$folder
mkdir ../compiled/$folder

# Compile
./../compile.sh $folder/myplugin.sp

# Move to the plugin folder
mv ../compiled/$folder/myplugin.smx ../../plugins/myplugin.smx