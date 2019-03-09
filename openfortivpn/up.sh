#! bin/bash

case $1 in
	HOLA)
		sudo openfortigui --start-vpn --vpn-name HOLA &
		;;
	HOLAcom)
		sudo openfortigui --start-vpn --vpn-name HOLAcom &
		;;
esac
