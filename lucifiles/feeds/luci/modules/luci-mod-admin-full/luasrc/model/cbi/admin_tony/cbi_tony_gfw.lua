-- Copyright 2019-2020 Tony <tony-cn@outlook.com>
-- Licensed to the public under the Apache License 2.0.

luci.sys.exec("echo 0xDEADBEEF >/etc/config/google_fu_mode")  

m = Map("cbi_file", translate("芝麻开门<br></br><a href='https://bit.do/OpenWRT-for-N1' target='_blank'><input align='center' type='button' value='查看刷机升级固件操作演示'  class='cbi-button cbi-button-apply'></a> &nbsp; &nbsp;<a href='https://bit.do/openwrt-for-n1' target='_blank'><input align='center' type='button' value='下载【一键刷入EMMC】的固件'  class='cbi-button cbi-button-apply'></a>  &nbsp; &nbsp; <a href='https://bit.do/TV-for-N1' target='_blank'><input align='center' type='button' value='下载N1盒子的电视系统固件'  class='cbi-button cbi-button-apply'></a>"), translate("<br></br>We believe Internet is a treasure island which opens sesame for people.<br></br> <a href='https://bit.do/N1toEMMC' target='_blank'><input align='center' type='button' value='用传统方式把N1盒子固件刷入到EMMC的详细演示'  class='cbi-button cbi-button-apply'></a> &nbsp;&nbsp;&nbsp;  <a href='https://bit.do/N1bootUSB target='_blank'><input align='center' type='button' value='N1盒子激活从U盘引导启动的演示'  class='cbi-button cbi-button-apply'></a><br><br><br><a href='https://bit.do/N1toOpenWRT' target='_blank'><input align='center' type='button' value='N1盒子从原NAS、电视、游戏、多媒体等系统升级到OpenWRT路由系统固件'  class='cbi-button cbi-button-apply'></a> &nbsp; &nbsp; &nbsp; <a href='https://bit.do/USB4OpenWRT' target='_blank'><input align='center' type='button' value='USB有线网卡无线网卡在OpenWRT路由系统中使用'  class='cbi-button cbi-button-apply'></a>")) 
-- cbi_file is the config file in /etc/config
d = m:section(TypedSection, "info", "Open Sesame")  
-- info is the section called info in cbi_file
a = d:option(Value, "code", "Mysterious Code"); a.optional=false; a.rmempty = false;  
--luci.sys.exec("echo 0xDEADBEEF >/etc/config/google_fu_mode") 
-- name is the option in the cbi_file
return m




