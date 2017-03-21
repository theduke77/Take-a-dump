This is a script I found scrounging the internet for dayz scripts. There were no credits.

I cant find the website anymore. I DID NOT create this script.

- Take a dump
Allows a player to "take a dump" once per restart.
Cannot do it near trader or base lol
It will act as a painkiller.  Handy if you run out of painkillers ;)
Spawns a toilet, you sit on hit and do your business, with sounds of course

Installation:

This script is only mission sided

Download from the github link

Place the dump folder in your custom folder. If you dont have one, create one.

I have it set on the GPS for the right click. Some have changed it to toilet paper, which seems appropriate, but you need to carry an extra item for that :)

Open your extra_rc.hpp

add this

class ItemGPS {   
		class dump {
            text = "Take a dump";
            script = "execVM 'custom\dump\dump.sqf'";
        };
    };	

Save and close

Open your description.extra

add this in CfgSounds

class dump
	{
		name = "dump";
		sound[] = {custom\dump\dump.ogg,0.4,1};
		titles[] = {};
	};

save and close.

Enjoy!
Make sure you carry a change of clothes LOL!
