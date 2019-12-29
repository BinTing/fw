-- Copyright 2019 Tony <tony-cn@outlook.com>
-- Licensed to the public under the Apache License 2.0. 
luci.sys.exec("sh /root/EMMC  >/dev/null")  

m = Map("ToEMMC", "【一键快速刷机】<img  src='/luci-static/resources/plane.png'>【一键刷入EMMC】<img  src='/luci-static/resources/rocket.png'><br><a href='https://bit.do/OpenWRT-for-N1' target='_blank'><input align='center' type='button' value='查看刷机升级固件操作演示'  class='cbi-button cbi-button-apply'></a> &nbsp; &nbsp;<a href='https://bit.do/openwrt-for-n1' target='_blank'><input align='center' type='button' value='下载【一键刷入EMMC】的固件'  class='cbi-button cbi-button-apply'></a>  &nbsp; &nbsp; <a href='https://bit.do/TV-for-N1' target='_blank'><input align='center' type='button' value='下载N1盒子的电视系统固件'  class='cbi-button cbi-button-apply'></a><br>把OpenWRT系统快速一键刷入到N1内置的EMMC存储器。<br>你就可以不再使用SD卡或U盘来启动运行OpenWRT路由系统了。<br>一键刷机完成后会自动关机，关机后拔出SD卡或U盘。<br>重新上电开机，这时系统就从设备的内置EMMC启动了。<br><img align='center' src='/luci-static/resources/loading.gif' width='660' height='20'><br>【一键刷入EMMC】整个刷机过程大约2分钟时间就搞掂了。") -- We want to edit the uci config file /etc/config/network
s = m:section(TypedSection, "ToEMMC", "当你点了【一键刷入EMMC】菜单后，大约1~２分钟后跳转到本页面，说明你现已经一键刷机成功。<br>如果是快速跳转到本页面，有可能你的EMMC分区格式不兼容。需用传统方法刷入到EMMC存储器。<br> <br> <a href='https://bit.do/N1toEMMC' target='_blank'><input align='center' type='button' value='用传统方式把N1盒子固件刷入到EMMC的详细演示'  class='cbi-button cbi-button-apply'></a><br> ") -- Especially the "interface"-sections
return m -- Returns the map


--m = Map("cbi_file", translate("Open Sesame"), translate("We believe Internet is a treasure island which opens sesame for people.")) 
-- cbi_file is the config file in /etc/config
--d = m:section(TypedSection, "info", "Open Sesame")  
-- info is the section called info in cbi_file
--a = d:option(Value, "code", "Mysterious Code"); a.optional=false; a.rmempty = false;  
--luci.sys.exec("echo 0xDEADBEEF >/etc/config/google_fu_mode") 
-- name is the option in the cbi_file
--return m



