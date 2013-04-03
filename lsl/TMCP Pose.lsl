key ourAgent;
string currentAnim;
 
integer hasPerms;
 
integer MSG_AGENT_PLAY_ANIM=395; // to notify the slave script
integer MSG_AGENT_STOP_ANIM=396;
integer MSG_ATTACH_AGENT = 398;
integer MSG_DETACH_AGENT = 399;
integer MSG_REGISTER_SITSCRIPT =383;
integer MSG_QUERY_SITSCRIPT = 385;
integer MSG_SYNC_ANIM=361;
 
integer MSG_ADJUST_POSROT=520;
integer MSG_TEMPORARY_POSROT=521;
 
integer MSG_MODE_ADJUST=368;
 
 
vector o=ZERO_VECTOR;
vector r=ZERO_VECTOR;
integer hastimer;
 
integer is_adjusting;
integer cursormode;
 
 
stopAnim() {
    if (hasPerms) if (currentAnim)
        llStopAnimation(currentAnim);   
}
 
runAnim() {
    if (hasPerms) if (currentAnim)
        llStartAnimation(currentAnim);
}
 
integer checkPerms() {
    if (llGetPermissionsKey()!=ourAgent) {
        hasPerms = FALSE;
        return FALSE;   
    }
    hasPerms=(PERMISSION_TAKE_CONTROLS|PERMISSION_TRIGGER_ANIMATION) == ((PERMISSION_TAKE_CONTROLS|PERMISSION_TRIGGER_ANIMATION) & llGetPermissions());
    return hasPerms;
}
 
queryPerms() {
    if (!checkPerms()) {
        //must query them
        llRequestPermissions(ourAgent, PERMISSION_TAKE_CONTROLS|PERMISSION_TRIGGER_ANIMATION);   
    } else {
        stopDefAnims();
        if (currentAnim)
            llStartAnimation(currentAnim);
        getControls();   
    }
}
 
stopDefAnims() {
    //easy way would be:
    //llStopAnimation("sit");   
    //let's go for the hard way
    list a=llGetAnimationList(ourAgent);
    integer i;
    for (i=0; i<llGetListLength(a); i++)
        llStopAnimation(llList2Key(a,i));
}
 
register() {
    llMessageLinked (LINK_THIS, MSG_REGISTER_SITSCRIPT, llGetScriptName(), "");   
}
 
getControls() {
    llTakeControls (CONTROL_UP|CONTROL_DOWN|CONTROL_LEFT|CONTROL_RIGHT|CONTROL_FWD|CONTROL_BACK|CONTROL_ROT_LEFT|CONTROL_ROT_RIGHT, TRUE, FALSE);
    //llInstantMessage (ourAgent, "Adjust your position with PGUP, PGDOWN and cursorkeys. Shift rotates.");   
    whispHelp(ourAgent);
}
 
parseControls (integer level, integer edge) {
 
    integer l = level; //hold down
 
    if ((CONTROL_UP|CONTROL_DOWN)==(l & edge & (CONTROL_UP | CONTROL_DOWN))) {
        cursormode=!cursormode;
        whispHelp(ourAgent);
        return;   
    }
 
    if (is_adjusting) {
        integer cm=cursormode;
        if (l & edge & CONTROL_LEFT) 
            cursormode--;
        if (l & edge & CONTROL_RIGHT)
            cursormode++;
        if (cursormode<1)
            cursormode=3;
        if (cursormode>3)
            cursormode=1;
        if (cm!=cursormode)
            whispHelp(ourAgent);        
    }
 
 
    if (cursormode==1) {//fine adjust    
        if (l & CONTROL_FWD) o+=<0,2,0>;
        if (l & CONTROL_BACK) o+=<0,-2,0>;
        if (l & CONTROL_ROT_LEFT) o+=<-2,0,0>;
        if (l & CONTROL_ROT_RIGHT) o+=<2,0,0>;
        if (l & CONTROL_UP) o+=<0,0,2>;
        if (l & CONTROL_DOWN) o+=<0,0,-2>;
    }
    else
    if (cursormode==2) {//90 degrees rotation    
        if (l & edge & CONTROL_FWD) r+=<0,90,0>;
        if (l & edge & CONTROL_BACK) r+=<0,-90,0>;
        if (l & edge & CONTROL_ROT_LEFT) r+=<0,0,-90>;
        if (l & edge & CONTROL_ROT_RIGHT) r+=<0,0,90>;
        if (l & edge & CONTROL_UP) r+=<90,0,0>;
        if (l & edge & CONTROL_DOWN) r+=<-90,-0,0>;
    }
    else
    if (cursormode==3) {//fine rotation    
        if (l & CONTROL_FWD) r+=<0,1,0>;
        if (l & CONTROL_BACK) r+=<0,-1,0>; 
        if (l & CONTROL_ROT_LEFT) r+=<0,0,-1>;
        if (l & CONTROL_ROT_RIGHT) r+=<0,0,1>;
        if (l & CONTROL_UP) r+=<1,0,0>;
        if (l & CONTROL_DOWN) r+=<-1,0,0>;
    }
 
    //if (l & edge & CONTROL_LEFT) r += <0,0,90>;
    //if (l & edge & CONTROL_RIGHT) r += <0,-90,0>;    
 
    if (!hastimer) {
        llSetTimerEvent (0.25);
        hastimer=TRUE;
    }
}
 
whispHelp (key id) {
    if (!is_adjusting) {
        if (!cursormode) {
            llRegionSayTo (id, 0, "Press PAGE-UP and PAGE-DOWN simultanious to fine adjust position");
        } else {
            llRegionSayTo (id, 0, "Use the cursor keys and up/down to adjust position. Changes made are temporary.");
        }        
    } else {
        if (!cursormode)
            llRegionSayTo (id, 0, "Use PAGE-UP and PAGE-DOWN to start adjusting");
        if (1==cursormode)
            llRegionSayTo (id, 0, "Mode: position (fine adjust). Use cursor keys and up/down to adjust position. Shift-left or shift-right to change mode");
        if (2==cursormode)
            llRegionSayTo (id, 0, "Mode: rotation (90 degrees) . Use cursor keys and up/down to adjust rotation. Shift-left or shift-right to change mode");
        if (3==cursormode)
            llRegionSayTo (id, 0, "Mode: rotation (fine adjust). Use cursor keys and up/down to adjust rotation. Shift-left or shift-right to change mode");
    }
}
 
upgrade() {string self = llGetScriptName(); string basename = self; if (llSubStringIndex(self, " ") >= 0) {integer start = 2; string tail = llGetSubString(self, llStringLength(self) - start, -1); while (llGetSubString(tail, 0, 0) != " ") {start++; tail = llGetSubString(self, llStringLength(self) - start, -1);} if ((integer)tail > 0) {basename = llGetSubString(self, 0, -llStringLength(tail) - 1);}} integer n = llGetInventoryNumber(INVENTORY_SCRIPT); while (n-- > 0) {string item = llGetInventoryName(INVENTORY_SCRIPT, n); if (item != self && 0 == llSubStringIndex(item, basename)) {llRemoveInventory(item);}}}
 
 
default
{
    state_entry()
    {
        //upgrade();
        register();
    }
 
    link_message(integer sn, integer n, string m, key id) {
        if (n==MSG_ATTACH_AGENT) {
            if (m==llGetScriptName()) {
                if (ourAgent)
                    stopAnim();
                currentAnim="";   
                ourAgent = id;
                queryPerms();
            }
        }
        else
        if (n==MSG_DETACH_AGENT) {
            if (ourAgent==id) {
                llReleaseControls();
                stopAnim();
            }
            ourAgent=NULL_KEY;
            currentAnim="";   
        }
        else
        if (n==MSG_AGENT_PLAY_ANIM) {
            if (ourAgent==id) {
                stopAnim();
                currentAnim=m;
                runAnim();
            }
        }
        else
        if (n==MSG_AGENT_STOP_ANIM) {
            if (ourAgent==id) {
                stopAnim();
                currentAnim="";    
            }   
        }
        else
        if (n==MSG_SYNC_ANIM) {
            if (ourAgent) {
                stopAnim();
                runAnim();
            }   
        }
        else
        if (n==MSG_QUERY_SITSCRIPT) {
            register();
            //llOwnerSay ("Registering");   
        }
        else
        if (n==MSG_MODE_ADJUST) {
            is_adjusting = (integer)m;
            if (!is_adjusting)
                cursormode=0;
            else
                cursormode=1;
            if (id==ourAgent)
                whispHelp(id);   
        }
 
    }
 
    run_time_permissions(integer p) {
        if (checkPerms()) {
            stopDefAnims();
            if (currentAnim)
                llStartAnimation(currentAnim);   
            getControls();
        } 
    }
 
    control (key id, integer level, integer edge) {
        if (id!=ourAgent)
            return;
        parseControls (level, edge);   
    }
 
    timer () {
        llSetTimerEvent (0.);
        hastimer=FALSE;
        if (ZERO_VECTOR!=(o+r)) {
            if (is_adjusting)
                llMessageLinked (LINK_THIS, MSG_ADJUST_POSROT, (string)(0.005*o)+"&"+(string)r, ourAgent);    
            else
                llMessageLinked (LINK_THIS, MSG_TEMPORARY_POSROT, (string)(0.005*o)+"&"+(string)r, ourAgent);            
        }
        o=ZERO_VECTOR;
        r=ZERO_VECTOR;
 
    }
 
}