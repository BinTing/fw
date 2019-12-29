-- Copyright 2019 Tony <tony-cn@outlook.com>
-- Licensed to the public under the Apache License 2.0.

--luci.sys.call("/etc/init.d/network restart")


luci.sys.call("/etc/init.d/network restart")

m = Map("cbi_restart", translate("重启无线网络"), translate("在不重启路由器设备的情况下，重启有线、无线网络.")) 
s =  m:section(TypedSection, "info", "完成重启无线网络")  
return m -- Returns the map



--m = Map("cbi_restart", translate("重启无线网络"), translate("在不重启路由器设备的情况下，重启有线、无线网络.")) 
-- cbi_file is the config file in /etc/config
--d = m:section(TypedSection, "info", "完成重启无线网络")  
-- info is the section called info in cbi_file
--a = d:option(Value, "code", "Mysterious Code"); a.optional=false; a.rmempty = false;  
--luci.sys.exec("echo 0xDEADBEEF >/etc/config/google_fu_mode") 
-- name is the option in the cbi_restart
--return m




