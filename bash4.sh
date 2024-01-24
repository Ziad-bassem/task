dir_path="$1"

if [ ! -e "$dir_path" ];
then 
echo "directory not found"
exit 
fi


echo "exiftool metadata:"

for file in "$1"/*; do
echo "file: $file"
exiftool "$file"
done

echo "media info:"

for file in "$1"/*; do
echo "file: $file"
mediainfo "$file"  
done

echo "tcpdump"


for file in "$1"/*; do
echo "file: $file"
tcpdump -r "$file"  
done

echo "strings"

for file in "$1"/*; do
echo "file: $file"
strings "$file"  
done


echo "analysis completed"
