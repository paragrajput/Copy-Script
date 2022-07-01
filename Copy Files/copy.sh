#!/bin/sh
file_path="/home/dakshabhi/rabitmqproject/apache-tomcat-9.0.35/webapps/communicog-src/"
if [ -d $(date +%d-%m-%Y) ]
then
    echo "Directory already exists"
else
    mkdir $(date +%d-%m-%Y)
    mkdir $(date +%d-%m-%Y)/files
fi

while read line; do
    cp -i $file_path$line $(date +%d-%m-%Y)/files
done <"filepathlist"
cp -i filepathlist $(date +%d-%m-%Y)
cp -i Compare/compare.sh $(date +%d-%m-%Y)
zip -r $(date +%d-%m-%Y).zip $(date +%d-%m-%Y)/*
rm -rf $(date +%d-%m-%Y)