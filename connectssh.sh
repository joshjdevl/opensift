OIFS=$IFS;
IFS=":";

info=$(cat port)
infoArray=($info)

echo ${infoArray[1]}

ssh -X root@localhost -p ${infoArray[1]}

#echo ${infoArray[0]}
#echo ${infoArray[1]}
