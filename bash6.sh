input_file="domains.txt"

iterations=$1

file="subdomains.txt"

amass enum -d $(cat $input_file) -o $file

for ((i=1; i<=$iterations; i++)); do
    subfinder -dL $file -o $file2.txt
    cat $file2.txt >> $file
    rm $file2.txt
done

subdomains_count=$(cat $file | sort -u | wc -l)

cat $file | sort -u > $file

echo "subdomains saved in $file."
echo "subdomains found: $subdomains_count"
