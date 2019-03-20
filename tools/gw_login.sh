#?/bin/bash
CURRENT_GW=$1
export CURRENT_GW
curl -X POST --data "action=login&ac_id=1&user_ip=&nas_ip=&user_mac=&save_me=1&ajax=1&username="$CURRENT_GW"&password="$2 https://gw.buaa.edu.cn:801/include/auth_action.php -k
