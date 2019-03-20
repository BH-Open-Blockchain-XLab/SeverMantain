#?/bin/bash
curl -X POST --data "action=logout&ac_id=1&user_ip=&nas_ip=&user_mac=&save_me=1&ajax=1&username="$CURRENT_GW"&password=" https://gw.buaa.edu.cn:801/include/auth_action.php -k
unset CURRENT_GW
