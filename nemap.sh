#target="$1"
#for (( i=1; i<=$target; i++ ))
#do
printf "Masukan Target ip-target.txt : "
read ip  
   while read p; do
     nmap -sV -vv -p- --script vuln -oX result.xml "$p"
   done <$ip
#done
