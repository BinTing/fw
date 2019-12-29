-- Copyright 2019 Tony <tony-cn@outlook.com>
-- Licensed to the public under the Apache License 2.0. 

module("luci.controller.admin.tony", package.seeall)  
---➀➁➂➃➄➅➆➇➈➉➊➋➌➍➎➏➐➑➒➓   
function index()  
    entry({"admin", "tony"}, alias("admin", "tony", "tony"), _("✪Tony"), 80).index = true  
    entry({"admin", "tony", "Control"}, cbi("admin_tony/cbi_tony_gfw"), _("① OpenSesame"), 1)  
    entry({"admin", "tony", "GCP"}, template("admin_tony_view/gcp"), _("② GoogleCloud"), 2)  
--  entry({"admin", "tony", "Restart"}, cbi("admin_tony/cbi_tony_restart"), _("② RestartWiFi"), 2)  
    entry({"admin", "system", "reboot", "call"}, post("action_reboot"))
    entry({"admin", "tony", "VPNVPS"}, template("admin_tony_view/vpnvps"), _("③ VPNVPS"), 3) 
    entry({"admin", "tony", "FreeSSR"}, template("admin_tony_view/freessr"), _("④ Ladder"), 4)  
    entry({"admin", "tony", "Decode"}, template("admin_tony_view/linkdecode"), _("⑤ Decode"), 5) 
    entry({"admin", "tony", "Reboot"}, template("admin_tony_view/reboot"), _("⑥ Re-boot"), 6)  
    entry({"admin", "system", "reboot", "call"}, post("action_reboot"))
    entry({"admin", "tony", "Telegram"}, template("admin_tony_view/telegram"), _("➆ Telegram"), 7)  
    entry({"admin", "tony", "Poweroff"}, template("admin_tony_view/poweroff"), _("➇ Poweroff"), 8)  
    entry({"admin", "system", "poweroff", "call"}, post("action_poweroff"))
    entry({"admin", "tony", "Install"}, cbi("admin_tony/cbi_tony_uboot"), _("★ To Uboot"), 9) 
--  entry({"admin", "tony", "Install"}, cbi("admin_tony/cbi_tony_emmc"), _("★ To EMMC"), 9)  
    entry({"admin", "tony", "StickyNotes"}, template("admin_tony_view/StickyNotes"), _("➈ StickyNotes"), 9)  
--  entry({"admin", "tony", "Docker"}, template("admin/services/docker"), _("★ Docker"), 10)  
--  entry({"admin", "tony", "RaspberryPi"}, template("admin_tony_view/ebook"), _("★ RaspberryPi"), 10)  
--  entry({"admin", "tony", "docker"}, cbi("docker"), _("★ Docker"), 10)  
	entry({"admin","services","docker","status"},call("act_status")).leaf=true
    entry({"admin", "tony", "theme"}, cbi("admin_tony/cbi_tony_theme"), _("★ Theme"), 11)  

end

