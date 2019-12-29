-- Copyright 2019 Tony <tony-cn@outlook.com>
-- Licensed to the public under the Apache License 2.0. 
luci.sys.exec("sh /root/UBOOT  >/dev/null")  

m = Map("ToUboot", "【一键刷入不死uboot】<img  src='/luci-static/resources/plane.png'>【一键刷入不死uboot】<img  src='/luci-static/resources/rocket.png'><br><a href='https://bit.do/OpenWRT-WR703N-uboot' target='_blank'><input align='center' type='button' value='查看刷机升级固件操作演示'  class='cbi-button cbi-button-apply'></a> &nbsp; &nbsp;<a href='https://bit.do/openwrt-wr703n-uboot' target='_blank'><input align='center' type='button' value='下载【一键刷入不死uboot】的固件'  class='cbi-button cbi-button-apply'></a>  &nbsp; &nbsp; <a href='https://bit.do/OpenWRT-for-WR703N' target='_blank'><input align='center' type='button' value='下载最新OpenWRT系统固件'  class='cbi-button cbi-button-apply'></a><br>最简单最快速一键刷入不死uboot到路由器中。<br>你就可以更加方便的刷机升级OpenWRT路由系统了。<br>一键刷机完成后请关机，关机后按住路由器的复位键或WPS键。<br>重新上电开机，持续按住5秒到10秒看到指示灯不断的闪烁后松开按键，在浏览器输入192.168.1.1即可进入uboot或breed的刷机管理界面。<br><img align='center' src='/luci-static/resources/loading.gif' width='660' height='20'><br>【一键刷入不死uboot】整个刷机过程大约1分钟时间就搞掂了。") -- We want to edit the uci config file /etc/config/network
s = m:section(TypedSection, "ToEMMC", "当你点了【一键刷入不死uboot】菜单后，大约1~２分钟后跳转到本页面，说明你现已经一键刷机成功。<br>如果是快速跳转到本页面，有可能你的路由器硬件版本不兼容。需用传统方法手动刷入uboot。<br> <br> <a href='https://bit.do/ubootbreed' target='_blank'><input align='center' type='button' value='用传统方式把刷入uboot或breed的详细演示'  class='cbi-button cbi-button-apply'></a><br> ") -- Especially the "interface"-sections
return m -- Returns the map


--m = Map("cbi_file", translate("Open Sesame"), translate("We believe Internet is a treasure island which opens sesame for people.")) 
-- cbi_file is the config file in /etc/config
--d = m:section(TypedSection, "info", "Open Sesame")  
-- info is the section called info in cbi_file
--a = d:option(Value, "code", "Mysterious Code"); a.optional=false; a.rmempty = false;  
--luci.sys.exec("echo 0xDEADBEEF >/etc/config/google_fu_mode") 
-- name is the option in the cbi_file
--return m



