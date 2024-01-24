file_path="$1"
if [ ! -e "$file_path" ];
then
  echo "file not found"
exit 1
fi


file_size=$(du -h "$file_path" | cut -f1)
echo "size= $file_size"


file_type=$(file -b --mime-type "$file_path")
echo "Type= $file_type"


permissions=$(stat -c "%A" "$file_path")
echo "permissions= $permissions"
