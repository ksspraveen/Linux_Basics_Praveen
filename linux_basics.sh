#!/usr/bin/env bash
set -e

echo "1) Create directory"
mkdir -p test_dir
echo "2) Create empty file"
touch test_dir/example.txt
echo "3) Rename file"
mv test_dir/example.txt test_dir/renamed_example.txt
echo "4) Display /etc/passwd"
cat /etc/passwd
echo "5) First 5 lines"
head -n 5 /etc/passwd
echo "6) Last 5 lines"
tail -n 5 /etc/passwd
echo "7) Search for root"
grep "root" /etc/passwd
echo "8) Zip directory"
zip -r test_dir.zip test_dir
echo "9) Unzip into a new directory"
mkdir -p unzipped_dir
unzip -o test_dir.zip -d unzipped_dir
echo "10) Download sample file"
wget -O sample.txt https://example.com/sample.txt
echo "11) Create secure file and set read-only permissions"
touch secure.txt
chmod 444 secure.txt
ls -l secure.txt
echo "12) Set environment variable"
export MY_VAR="Hello, Linux!"
echo "MY_VAR=$MY_VAR"
