#! bin/bash

case $1 in
	HOLA)
		sudo openfortigui --start-vpn --vpn-name name_profile_vpn &
		;;
	HOLAcom)
		sudo openfortigui --start-vpn --vpn-name name_profile_vpn2 &
		;;
esac
