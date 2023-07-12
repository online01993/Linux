#!/bin/bash
for grDevId in '<<ID_группы_устройств>>' '<<ID_группы_устройств>>' '<<ID_группы_устройств>>' '<<ID_группы_устройств>>' '<<ID_группы_устройств>>' '<<ID_группы_устройств>>' '<<ID_группы_устройств>>'
do
#for it-first-line
/bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser meshadmin --loginpass <<passwprdUser>> AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//BplX7v8nzEzOqOXdmI7zIXD8FWjZESZUMIc2M8dQZUsKDTj3@wJ9yyNGr8udofzQ''' --rights 1460968
#for it-first-line-experts
/bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser meshadmin --loginpass <<passwprdUser>> AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//wUGpqKw4Zu3W6aPF@hPBbypGSpGtOvWc@PlWGRxIuNFkWBueMhZCZowKV95E9h@s''' --rights 1493741
#for it-second-line
/bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser meshadmin --loginpass <<passwprdUser>> AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//Zv5xHU0pwlU20F$ua@VcBTr1isBYT0zBghdSX8fDQky3dorWyRamGJNEcyEO05KX''' --rights 4114685
#for mesh-administrators
/bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser meshadmin --loginpass <<passwprdUser>> AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//qOa4rQCbvWGSDKdQvfsr3c77DRD1xBT5f$CwxWK0ovOawS$XOKTCynErKnsfk83K''' --rights 4114687
#for directors
/bin/node /data/node_modules/meshcentral/meshctrl.js --url wss://mc.it-russia.com --loginuser meshadmin --loginpass <<passwprdUser>> AddToUserGroup --id ''mesh//$grDevId'' --groupid '''ugrp//jGJ3JX8koprCJfZUurWm3Xbcx8si8@7QkQ3h2hXpXdgm0rJDK0b2q1XvMYnBaRmW''' --rights 4114685
done
