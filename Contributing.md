# Contirbuting
## File Naming
Maps with animations and palletes should be placed at the mix folder `Source/expandmo42`. Map names should be followed pattern `FXNAME`, where 

* `F` - means fanmade misson, 
* `X` - short faction name (`A` - Allied, `S` - Soviet, `E` - Epsilon, `F` - Foehn), 
* `NAME` - short name of the mission.

Map's animation and pallete should be named exactly as map file.

## CSF Strings
All maps should use only this strings:

* FXNAME:* - any string displaying to user
* BRIEF:FXNAME - in-game briefing
* LOADBRIEF:FXNAME - briefing on loading screen
* LOADMSG:FXNAME - top text on loading screen about operation name and location
* MAP:FXNAME - default map name for creating save
* POST:FXNAME - briefing in the end of mission

## Loading Screen
Mission loading screen defines at `missionmo.ini`. Before adding mission to the this project you should add this ini-section to the file and change `FXNAME` to yours.

```ini
[FXNAME.MAP] ; Campaign Name - Mission Name
Briefing=BRIEF:FXNAME
UIName=MAP:FXNAME
LSLoadMessage=LOADMSG:FXNAME
LSLoadBriefing=LOADBRIEF:FXNAME
LS640BriefLocX=20
LS640BriefLocY=20
LS800BriefLocX=20
LS800BriefLocY=20
LS640BkgdName=FXNAME.SHP
LS800BkgdName=FXNAME.SHP
LS800BkgdPal=FXNAME.PAL
LoadScreenText.Color=LightGrey
```

## Mission In-game Selection

## Mission Client Selection

## Single Missions
All single missions without campaign continuation should have in section `[Basic]` key `EndOfGame` with value `yes`
