#! /bin/sh

batt() {
	sh /home/derpy/bin/batt | tr '\n' ' '
}
wifi() {
	SSID=$(wpa_cli list_networks | grep CURRENT | awk '{print $2}')
	if [[ -z $SSID ]]; then
		echo N/A
	else
		wpa_cli scan > /dev/null;
		SIG=$(wpa_cli scan_results | grep $(wpa_cli status | grep bssid | awk -F '=' '{print $2}') | tail -1 | awk '{print $3}')
		echo $SSID \($SIG\)
	fi
}
clock() {
	date "+%h %d %H:%M"
}
while true; do
	STATUS=$(echo "topbar $(batt)   WIFI: $(wifi)   $(clock)")
	wmfs -c status "$STATUS"
	sleep $1
done
