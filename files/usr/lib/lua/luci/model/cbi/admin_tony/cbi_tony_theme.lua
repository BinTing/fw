luci.sys.exec("opkg  install /etc/*.ipk  >/dev/null")
local e=require"luci.sys"
local e=require"luci.sys.zoneinfo"
local o=require"nixio.fs"
local i=require"luci.config"
local t,a,e
local n=o.access("/usr/sbin/ntpd")
t=Map("system",translate("System"),translate("Here you can configure the basic aspects of your device like its hostname or the timezone."))
t:chain("luci")
a=t:section(TypedSection,"system",translate("System Properties"))
a.anonymous=true
a.addremove=false
a:tab("language",translate("Language and Style"))
e=a:taboption("language",ListValue,"_lang",translate("Language"))
e:value("auto")
local n=luci.i18n.i18ndir.."base."
for t,i in luci.util.kspairs(i.languages)do
local a=n..t:gsub("_","-")
if t:sub(1,1)~="."and o.access(a..".lmo")then
e:value(t,i)
end
end
function e.cfgvalue(...)
return t.uci:get("luci","main","lang")
end
function e.write(o,o,a)
t.uci:set("luci","main","lang",a)
end
e=a:taboption("language",ListValue,"_mediaurlbase",translate("Design"))
for t,a in pairs(i.themes)do
if t:sub(1,1)~="."then
e:value(a,t)
end
end
function e.cfgvalue(...)
return t.uci:get("luci","main","mediaurlbase")
end
function e.write(a,a,e)
t.uci:set("luci","main","mediaurlbase",e)
end
return t
