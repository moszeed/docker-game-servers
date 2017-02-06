Title    : InstaGib+
Filename : instagibplus006.zip
Version  : 006
Date     : 01/9/01
Author   : Bill "Mad Dipper" Rodenbaugh <bill@gamespy.com>
Web Page : http://www.planetquake.com/instagibplus
Fileplanet Link: http://dl.fileplanet.com/dl/dl.asp?instagibplus/instagibplus005.zip

Intro
=========
InstaGib+ is an instant kill mod.  One shot, one kill! You get one weapon, 
infinite ammo and all items are removed from the map (except flags in CTF).
Instagib+ has full bot support and works fine in DM, Tourney, Team DM and CTF.

Client Info:
=========
InstaGib+ is a server side only mod so there is no need to download any client 
files.  Although you can play single player with bots as they are fully
functional.

If the grapple is allowed on a server (allowGrapple 1) and the offhand grapple
is being used, you must bind a key to +button5 in order to use it.

Server Info:
============
Download instagib+.zip
Extract the files to Your Quake3 Folder
Included in the zip file is a dedicated server batch and this readme.txt

Start a server using your normal server command line options and 
 +set fs_game instagibplus +set instagib <n> (n being 1 to 11)
 
Grappling Hook
==============
To enable the grapple change allowGrapple from 0 to 1 in the igplus.config file.
The default grapple type is offhand, which is set in the igplus.config file.

Offhand code taken from Willi's Q3A Offhand Grappling Hook v1.0


Game Modes:
===========
InstaGib+ lets you use more than just the railgun, you can use any of the built 
in weapons!  Besides the normal weapon modes I have added two extras, rotate 
(mode 10) and promote (mode 11).
Rotate Mode starts all players with the machinegun, every time you get a kill 
you get the next weapon all the way up to the BFG then it rotates you back to 
the machinegun all over again.
Promote mode also starts all players with the machinegun and moves you up with 
every kill, but if you die you start back with the machinegun.

The Other Modes are as follows:
Mode			NUMBER
==============================
Gauntlet                1
Machine Gun             2
Shotgun		              3
Grenade Launcher        4
Rocket Launcher	        5
Lightning Gun           6
Railgun                 7 <--- default
Plasmagun               8
BFG                     9

Rotate                  10
Promote                 11


Configuring Promote Mode
=========================
You can customize what order players receive weapons in promote mode (mode 11)
by editing the file igplus.config in your instagibplus directory.

Changing Modes:
===============
The game modes can be changed either by rcon/console or voting, if its allowed 
on the server.
If instagib voting is allowed on the server than you can vote to change the mode.  
\callvote instagib <n>, With <n> being the mode number between 1 and 11.
Once a mode has been changed all clients weapons will automatically change to 
the correct weapon for that mode.

This information is also available by typing \help at the console.

Voting
======================
You can chose weather or not you want to let people vote and on what.
To customize what players can vote on add the options up and create a 
new votingFlags value. Option Value 
Allow Voting  1 
Allow Map Changes 2 
Allow Nextmap 4 
Allow Map Restart 8 
Allow Gametype Changes 16 
Allow Kicking players 32 
Allow Warmup 64 
Allow Instagib+ Mode Changes 128 
Example:
Allow voting, map changes, and instagib mode changes
1 + 2 + 128 = 131
seta votingFlags 131

Set this value in the igplus.config file. 

Weapon Firing Rates
====================
All weapon firing rates are configurable.  You can customize these settings
by editing the igplus.config file in your instagibplus directory.

Voting
===================
You can chose weather or not you want to let people vote and on what.
See the igplus.config file for detailed explanation.

Spawn Protection
==================
If spawn protection is enabled, anytime someone spawns in the game
they become invincible and have glow for as many seconds the server op
allows.  Also, if the server op has allowed the protection warning the
player will receive a message saying the protection has run out.
The prortection cvars are:
spawnProtect - default 1 - spawn protection - god mode + battlesuit glow
protectTime - default 10000 - how long protection lasts in milliseconds
warnProtect - default 1 - tell the player that protect has run out 

Instagib+ Config File
===================
Included in the zip is a file named igplus.config.  This file continuing
information on all the settings and their default value, it also takes care
of settings most of the value.  I suggest you look over it.





Copyright and Distribution Permissions
=======================================

This mod is freely distributable provided that this readme is distributed
as well and is unchanged.

All code is Copyright Bill Rodenbaugh 2000.
Commercial code licensing is available by contacting bill@gamespy.com

DISCLAIMER: THE PROGRAM IS DEFINED AS THE QUAKE III:ARENA MOD "INSTAGIBPLUS" AND
  ALL FILES CONTAINED WITHIN.
  BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
  FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
  OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
  PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
  OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
  TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
  PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
  REPAIR OR CORRECTION.

Availability
=============
This modification is available from the following places:
WWW   : http://www.planetquake.com/instagibplus

Contact
=======
The author, Bill "Mad Dipper" Rodenbaugh, can be contacted by:
e-mail : bill@gamespy.com
ICQ    : 12390704

History
=======
001 - Initial Public Release
002 - Added disable normal voting
    - Added instagib+ voting
003 - Added configurable promote mode
004 - Added CVAR's for weapon firing rates 
    - Added grapple support and allowGrapple cvar
    - Replaced promote.config with igplus.config to include firing rate settings
004b - Added the offhand grapple as default with a cvar allowing it to be disabled
004c - add cvars for grapple settings, deploy, reload (send again), pull speed
     - add the ability to turn on / off all voting and specific voting options
     - added cvar to control no falling damage
005  - Added spawn protection & cvars going with it
006  - Fixed CTF Bug (flags not dropping)
     - Updated for the 1.27 Patch
TODO
=======

