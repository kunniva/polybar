
var=$(ps aux | grep "sudo openfortigui" | grep -v grep | awk '{print $2}')
if test -n $var;then
        terminator -e "sudo kill $var"
else
	killall openfortigui
fi
