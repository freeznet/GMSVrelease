dofile("lua/System/BaseModule/Delegate.lua");
require("lua/System/AllEvent/All_Talk");
require("lua/System/AllEvent/ALL_Battle");
require("lua/System/AllEvent/All_Login");
require("lua/System/AllEvent/ALL_Warp");
require("lua/System/BaseModule/Base");
function initALL()
	
	
	--注册全局事件
	NL.RegTalkEvent(nil,"All_TalkEvent");
	NL.RegBattleStartEvent(nil,"All_BattleStartEvent");
	NL.RegBattleOverEvent(nil,"All_BattleOverEvent");
	NL.RegLoginEvent(nil,"All_LoginEvent");
	NL.RegLogoutEvent(nil,"All_LogoutEvent");
	NL.RegDropEvent(nil,"All_DropEvent");
	NL.RegLoginGateEvent(nil,"All_LoginGateEvent");
	NL.RegWarpEvent(nil,"All_WarpEvent");

	dofile("lua/Config.lua");
	-- Init delegate begin
    for _,Func in ipairs(tbl_delegate_Init) do
    local f = loadstring(Func.."()");	
	f();
    end
    -- end
	
 end
initALL();



