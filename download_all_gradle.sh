#! /bin/bash


# gradle versions
array=(
2.0
2.1
2.2
2.2.1
2.3
2.4
2.5
2.6
2.7
2.8
2.9
2.10
2.11
2.12
2.13
2.14
2.14.1
3.0
3.1
3.2
3.2.1
3.3
3.4
)

for data in ${array[@]}
do
echo ${data}
zipname=gradle-${data}-all.zip
cp backup.properties gradle/wrapper/gradle-wrapper.properties
gsed -i 's/'gradle-2.8-all.zip'/'${zipname}'/g' gradle/wrapper/gradle-wrapper.properties
time bash ./gradlew tasks

done
