luci.sys.call("/etc/init.d/network restart")
m=Map("cbi_restart",translate("重启无线网络"),translate("在不重启路由器设备的情况下，重启有线、无线网络."))
s=m:section(TypedSection,"info","完成重启无线网络")
return m
