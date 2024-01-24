backup_directory="/home/ziad/backup"
backup_file="home_backup.tar.gz"
home="/home"

mkdir -p "$backup_directory"

tar -czvf "$backup_directory/$backup_file" "$home"

if [ $? -eq 1 ];
then echo  "back up saved in: $backup_directory"

else
echo "backup failed"

exit
fi 
