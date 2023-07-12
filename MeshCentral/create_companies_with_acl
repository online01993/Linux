#!/bin/bash
login=<<user>>
pass=<<password>>
for line in `cat /root/companies.csv | grep -v ^#`; do
        companiesNames=`echo ${line} | cut -d '|' -f1`
        companiesIDs=`echo ${line} | cut -d '|' -f2`
        echo "Обрабатываем очередную компанию - $companiesNames($companiesIDs)"
        grDevId=$(/bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser $login --loginpass $pass AddDeviceGroup --name $companiesNames --desc $companiesIDs --features 2| sed 's|.*//||')
        echo "Создана группа в мешике с айдишником - $grDevId"
        #for it-first-line
        /bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser $login --loginpass $pass AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//BplX7v8nzEzOqOXdmI7zIXD8FWjZESZUMIc2M8dQZUsKDTj3@wJ9yyNGr8udofzQ''' --rights 1460968
        #for it-first-line-experts
        /bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser $login --loginpass $pass AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//wUGpqKw4Zu3W6aPF@hPBbypGSpGtOvWc@PlWGRxIuNFkWBueMhZCZowKV95E9h@s''' --rights 1493741
        #for it-second-line
        /bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser $login --loginpass $pass AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//Zv5xHU0pwlU20F$ua@VcBTr1isBYT0zBghdSX8fDQky3dorWyRamGJNEcyEO05KX''' --rights 4114685
        #for mesh-administrators
        /bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser $login --loginpass $pass AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//qOa4rQCbvWGSDKdQvfsr3c77DRD1xBT5f$CwxWK0ovOawS$XOKTCynErKnsfk83K''' --rights 4114687
        #for directors
        /bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser $login --loginpass $pass AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//jGJ3JX8koprCJfZUurWm3Xbcx8si8@7QkQ3h2hXpXdgm0rJDK0b2q1XvMYnBaRmW''' --rights 4114685
        #remove  login from him-self mgmt group
        /bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser $login --loginpass $pass RemoveuserFromDeviceGroup --id ''mesh//$grDevId'' --userid ''user//010500000000000515000000fd10fd09fdfdfdfd03fdfdfd45090000''
done
