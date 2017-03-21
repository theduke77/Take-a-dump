private ["_playerPos","_toilet","_dir","_pos","_id"];

closeDialog 0;

if (isNil "dump_taken") then { dump_taken = false; };

if (dump_taken) exitWith { titleText ["You already took a huge dump!","PLAIN"]; };

if (vehicle player != player) exitWith { titleText ["Dude WTF? You cannot shit inside a vehicle!","PLAIN"]; };

_no_glitchin = count nearestObjects [player, ["Plastic_Pole_EP1_DZ","MetalFloor_DZ","CinderWall_DZ"], 50];

if (_no_glitchin > 0) exitWith {

	titleText ["You can not shit near base!","PLAIN"];

	[format["%1 tried to take a DUMP near base.",name player]] call my_scripts_logger;

};

dump_taken = true;

_playerPos = player modelToWorld [0, -2, 0];

_toilet = "MAP_toilet_b" createVehicle _playerPos;

_toilet setVariable ["ObjectID", 1, true];

_toilet setVariable ["ObjectUID", 1, true];

_dir = getDir (_toilet);

_pos = getPosATL (_toilet);

uiSleep 2;

[nil, player, rSWITCHMOVE, "miles_c0briefing_odpovedel_loop"] call RE;

player setDir (_dir - 170);

player setPosATL (_pos); 

uiSleep 2;

[nil, player, rSAY, "dump", 100] call RE;

//[player,100,true,_pos] spawn player_alertZombies;

uiSleep 10;

[nil, player, rSAY, "dump", 100] call RE;

uiSleep 10;

deleteVehicle _toilet;

uiSleep 0.4;

[nil, player, rSWITCHMOVE, ""] call RE;

_id = [player,player] execVM "\z\addons\dayz_code\medical\publicEH\medPainkiller.sqf";

titleText ["You took a enormous dump! All your pains are gone!","PLAIN"];