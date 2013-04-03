TMCP
====

TMCP - Tano's MLP Compatible Pose scripts
  - a drop in replacement for MLPv2
  - configuration notecard compatible
  - Since august 14. 2012 released under the open source BSD license

FEATURES
========

  - MLPv2 notecard & plugin compatible
  - Fast & Stable operation
  - Intelligent menu
  - No poseballs
  - Plenty memory for larger animation sets

LIMITATIONS
===========

  - No facial animations (yet)
  - No properties

(Both limitations are relative easily added, yet not implemented in version 0.37)

Originally from: http://wiki.secondlife.com/wiki/TMCP

TMCP - A DROP-IN COMPATIBLE POSEBALL-FREE ANIMATION SYSTEM
===========

CONTENTS:

*TMCP scripts
    Named ~TMCP - *
    In either BUILDER, PERSONAL or SOURCE edition  [ Personal: COPY      Builder: COPY+TRANSF    Source: MOD+COPY+TRANSF ]
    
*.MENUITEMS and .POSITIONS examples, straight taken from the MLP release.

* Patched MLP2.4z9 with RLV features - This is NOT the official distribution, please fetch the original sources, and is only provided for convenience and to demonstrate RLV enabled MLP and it's compatability with TMCP. They are not part of my source, it is not the latest release and you can obtain MLPv2 freely!

---------------------------------

USAGE
* Load animations&sounds in your build.
* Edit the menu's in .MENUITEMS.
* Load all the ~TMCP scripts, and for each additional avatar to sit add a "~TMCP - pose" script.

Tip: Most users will prefer to set up their equipment with MLP first - because of the editable poseballs using native build tools, as opposed to a cursorkey based positioning. After all positioning is done, you could delete the ~MLP scripts and replace them by the ~TMCP scripts - no more, no less.

To release your product in a with and without poseball version, simply change the script engine. You can leave all notecards in place.

---------------------------------

TUTORIALS - WHERE TO GET STARTED
The best place to get started is the MLPv2 documentation at the linden wiki:
http://wiki.secondlife.com/wiki/MLPV2_Tutorial

TMCP is compatible with MLP. Once you understand MLP, you will also understand TMCP and the tiny differences - see the infocard for more details.

TMCP is not in any way related to the MLPv2 project. Please do not direct questions regarding specifically TMCP to the MLP team.

Otherwise, while you are free to ask me for support, i encourage you to get familiar with the MLP community. Just please realize that it are different projects, that are not in any way associated. The only thing they have in common is the compatability regarding notecard setup.

--------------------------------

*** TMCP - Tano's MLP Compatible Poser ***
<<Scripts for poseball-free multi-agent furniture>>

* NO POSEBALLS * UNLIMITED AVATARS * BLAZINGLY FAST * COMPATIBLE * EASY SET UP *

What is TMCP
TMCP is a set of scripts to equip furniture with poseball-free animations. It was written from the ground up, with full(*) MLP compatibility in mind.

Contents:
- Features
- Differences
- Added features
- Unsupported features
-versions
-support
- F.A.Q.
- Usage manual

Features
* MLP (v1/v2) compatible:
* use MLP menu's, positions and plugins
* No poseballs! All avatars sit on the same target, they get logical positions assigned
* Faster - efficient code, efficient non-stringly-typed linked message handling, efficient storage, less scripts, less lag.
* More memory free - load even more menu notecards than you were ever able to with MLP
* Drop-in compatible: delete the MLP scripts, leave the notecards, insert the TMCP scripts and you're rolling. No conversion or further configuration is needed. Having your product set up with MLP will make it function (almost) identical with TMCP.
* RLV grabbing support built-in, RLV features extendable.

Differences
Of course, there are some differences with MLP/MLPv2. Most notable are:
* The 'STOP' button only unseats the target that clicked it
* The 'SWAP' button will present a menu asking which position to swap with
* The menu is accessible by multiple targets simultaneous, no effort is done to lock it (**)
* Reload, Restart and Reset all are equivalent to the action 'Reset'
* Poseball colors are only used as description (in the swap menu), you could change their names at will.
* Plug-ins that work on the poseballs will fail, as there are none. This typically involves RLV. Therefore, RLV functionally is already added in.
* The "SAVE" command has got a new meaning and saves the current active pose.
* The 'default' pose gained in importance

Added features
* The menu shows a 'history', easifying usage and less confusing for agents when they want to use the 'BACK' button
* Unlimited avatars - only limited by the number defined in the configuration's default position.
* New access mode "USER" - applies to users currently sitting on the object. No more embarrassments due to strangers playing with menu's.
* Hibernate - after 1 hour of inactivity scripts will suspend to hibernation state to save sim recourses. They will automatically wake up on menu use.
* Two new commands to support RLV : "GRAB" and "RELEASE". RLV support for grabbing built-in, additional RLV features with optional script and config.

Unsupported features
* `props` (rezzable objects)  are not implemented (**)
* Any plugin that works on-, or communicates with poseballs.

Available versions
* Personal - upgrade your personal modifiable MLP-based furniture to TMCP.
* Builder - with copy+transfer permissions - equip your furniture with TMCP.

If you are considering the builder edition, you could try the personal version first to confirm it suits your needs. If you later decide to buy the builder edition, you can contact me for a refund on the personal edition. Purchases on either edition are final.

Support
You will get free updates when they are available. Feedback is welcomed. Questions will be answered.

F.A.Q.

Q. What is MLP?
A. MLP (or MLPv2) stands for Multi Love Pose - a set of open source scripts to equip furniture with animations. Do not ever pay for it, the standard version is available for free! Anyone trying to sell you an unmodified MLPv2 is ripping you off. However, there are various variations on it, including my own patched version (not commercially available, but contact me if you are interested in the patches). Other commercial pose scripts that may include MLP compatibility as well. Since the license is BSD, anyone could legally sell you a modified (or unmodified) version of it. MLP sets a pretty high baseline for commercial products to compete against, and provides without doubt an excellent and well-written pose solution. TMCP is not based on MLP code and was written from scratch. It's up to you if you want to go for a commercial or free option, just be aware (and especially if you are still learning to build) that you can get excellent pose scripts for free! Search the marketplace for MLPv2.

Q. Do i no longer need MLP?
A. No. Yes, i mean or was it no. You still need MLP to set up the positioning with the greatest ease. MLP allows you to reposition poseballs with avatars sitting on it, this is very convenient, and you can reposition another avatar. As TMCP is poseball-free, there is no way to reorient the position with the inworld-object-editor tool since there are no poseballs. Having said that, all other functionality is there. You can reposition with the cursor keys. And you can dump the current position list. Instead of rezzing poseballs for the pure sake of adjusting, i recommend using MLPv2 for setting up the animation positions, then later on change the scripts when done. Alternatively have all seated agents adjust their own position with the cursor keys.
A2. Your customers may like the poseballs. It can be attractive to offer two distinct products, one with and one without poseballs. The best part is, you only have to configure the product once, and you can ship with either MLPv2 or TMCP scripts.

Q. How do i use the sequencer?
A. Please use the sequencer script that comes with MLPv2.

Q. How do i use plug-in XYZ
A. Generally, just use it like you would with MLP. If you run into a compatibility issue, contact me and i'll see if i can fix it.

Q. Can i store adjusted positions per avatar
A. No, when in adjustment mode, the changes will be persistent until the next reset. To use them as defaults, dump the positions and save them in the .POSITIONS notecard. When not in adjustment mode, the position adjustment will reset as soon the avatar jumps off or seeks a new pose.

Q. What license will TMCP have?
A. Honestly, at the moment i'm uncertain about that. I want to have an extended beta period first, anyways. As commercial product, you will have COPY+TRANS rights on the developer version. The personal version will have COPY perms. If source becomes available for the developer version is at the moment unknown. A business model based on open source and selling support is preferred by me but at this point very unlikely.

Q. Are you involved with MLP? Did you use code from MLP
A. No, i'm not involved in developing MLP though i might contribute some patches in the future. Also, i did not use any code from MLP. The only thing i used are some linked message constants for plugin compatibility.

Q. Why, and how?
A. Because i can. I wanted to create poseball-free furniture. Initially, i played with the idea of patching MLP to be poseball-free. However, i decided a total rewrite would be the best solution, because that'd be likely more efficient. That turned out to be the right decision. So, here it is - a set of next-gen poser scripts called TMCP.

-------------------------------------------

USAGE MANUAL

-Quick Usage
-Upgrading existing furniture
-Troubleshooting

Quick usage
* Insert the TMCP scripts in an object
* Add one or more .MENUITEMS* notecards and one or more .POSITION* notecards
* Touch to start up. Wait until configuration loaded, then touch twice (sorry, linden bug) first time to access the menu.

Upgrading existing furniture
personal edition: WARNING - use at on risk. It is highly recommended to use this only on objects you have COPY perms on. Always make sure to keep a working backup. In order to upgrade furniture, it must have modify rights and the notecards must be readable.

Builders must set the next-owner permissions to either COPY  _OR_ TRANSFER before distributing.

Steps:
1. delete the existing MLP scripts and poseball, but leave the configuration notecards - see below.
2. copy all the "TMCP - *" scripts to your object.
3. Copy as many "TMCP - pose" scripts as you want concurrent avatars to sit.
4. Touch the object to start loading the configuration.
5. Done. Simply reset if you made changes to the configuration.

1. - deleting MLP scripts, their name start with the tilde `~` sign, which sorts them alphabetically to the end of a inventory.
    - Typical names for MLPv2 scripts and ball object are: 
    ~memory
    ~menu
    ~menucfg
    ~pos
    ~pose
    ~poser
    ~poser 1.. ~poser N
    ~props
    ~run
    ~swap
    ~ball
    
    - You can leave plugins in place
    ~sequencer

    - Also leave all .MENUITEMS*, .POSITION notecards and animations in place.
    

Troubleshooting
Resetting a faulty configuration:
If you changed the configuration or position notecards, you must reload it.
- Normally, the menu notecards would/should include an option allowing the owner to reset the configuration.
- If there are no configuration notecards (or no menu containing a 'RESET' option), the TMCP will auto-add a 'RESET' button in order to reload the configuration
- if you screwed up the menuitems configuration, and the 'reset' option is no longer available, you can reset the 'TMCP - menurender' script itself. This will reset all other scripts too.
- If you really want to hide the reset option (not recommended), you must hide it in an unused (INVISIBLE) menu.
- Reload, Restart and Reset are all equivalent under TMCP. They are all implemented for compatibility.
- Loading menuitems and positions independently is currently not supported(**).

End user differences
- SWAP and STOP changed slightly in function. This should not really add confusion.
- The SAVE command saves the current pose as the default. This setting is lost after a reset. By default, it is in the settings menu only accessable by the owner.
- Access mode - the access mode 'USER' is added. This mode can be used in configuration notecards, but also set by the owner for menu access.
Access mode behaviour differs slightly depending on situation. When a menu is defined in a notecard as 'USER' it is applied strict - unless it's the main menu. When the menu access mode is set to 'USER' by the owner using the 'MENUUSERS' command, only sitted agents can access it - unless no-one sits on the object, in which case everyone can access it.
Access modes 'ALL' , 'OWNER' and 'GROUP' will behave as expected.


Tips
- Set the object to 'sit on touch'.
- Define a proper default position, optionally with custom animations. The default animation will also be used as fallback option when a pose does not provide enough seat information for the current number of sitted avatars. Therefore, when creating a 5-avatar couch, it is a good idea to at least fill the default pose with 5 positions and animations. A pose only defining 2 positions will adjust the first 2 avatars seated, and apply default pose to the other avatars.

Menu card commands
I highely recommend to read the MLP documentation to understand the menu notecards. I'll give a brief summorization here. Items marked with [*] have different behaviour than with MLP. Items marked with [**] are new.

MENU menuname | access | ballcolor0 [,ballcolorN,...] //defines a menu. access is one of ALL, GROUP, OWNER or USER
POSE pose | posename1 | posenameN ...
LINKMSG name | hidemenu | linkid , number , message  //id will be the id of the menu toucher
TOMENU name or "-" //with "TOMENU -" the dash will be replaced by unassigned menu names
DUMP //dumps position data to owner
RESTART, RESET, RELOAD - restarts the device and reloads configuration
STOP* - the user pressing stop will be unseated. it will leave other users sitting.
SWAP* - the user will be presented a menu with positions to choose from
OFF* - switch the device off, saving sim resources and disabling access. Only owner can turn it on. If menu access is set to GROUP, group users can turn it on, too.
SAVE* - saves the current selected pose to be the default pose when sitted on. The default pose applies after 60 seconds when no-one is sitting on the object.
MENUUSERS* - A new access right was introduced - "USER". This is almost identical to access mode "ALL" except that it takes sit state of the object into account.
BALLUSERS - select permissions to sit on the object. Agents without permissions will be unseated.
CHAT - Be chatty or not. Some messages may still make it even with chat disabled. Chatty mostly applies to pose switches.
ADJUST - Turn the device into adjustment state. Changes made to pose position will be stored. Use DUMP to list your changes.
GRAB** - scans for victims wearing an RLV relay, offers agent a menu of candidates to grab
RELEASE** - release any(all) captured victim(s).

Unknown Commands  //will be listed just as-is in the menu. You can use this to define a pose only once, yet list it in several menu's.




------------------------------------------

(*) fully compatible - read all of MLP and MLPv2's notecards, implement all standard functions and a selected set of extended. Some function implementations may vary, see the differences section for details. Plugins that do not communicate with the mother scripts should all be compatible. Plugins that do communicate with the mother scripts, might be compatible. Any plugins trying to interact with poseballs directly will obviously fail, as they are nonexistant.
     
(**) May come in a future version
