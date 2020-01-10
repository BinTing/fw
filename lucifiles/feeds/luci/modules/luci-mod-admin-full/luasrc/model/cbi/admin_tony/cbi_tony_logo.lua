-- Copyright 2019 Tony <tony-cn@outlook.com>
-- Licensed to the public under the Apache License 2.0. 
luci.sys.exec("sh /bin/logo  >/dev/null")  

m = Map("ToEMMC", "【隐藏或显示页面右边的二维码图片】") -- We want to edit the uci config file /etc/config/network
s = m:section(TypedSection, "Hide/Show LOGO", "当你点了这个菜单后，然后关闭浏览器，再打开刷新页面就可以看效果了。<br>.") -- Especially the "interface"-sections
return m -- Returns the map


--m = Map("cbi_file", translate("Open Sesame"), translate("We believe Internet is a treasure island which opens sesame for people.")) 
-- cbi_file is the config file in /etc/config
--d = m:section(TypedSection, "info", "Open Sesame")  
-- info is the section called info in cbi_file
--a = d:option(Value, "code", "Mysterious Code"); a.optional=false; a.rmempty = false;  
--luci.sys.exec("echo 0xDEADBEEF >/etc/config/google_fu_mode") 
-- name is the option in the cbi_file
--return m



