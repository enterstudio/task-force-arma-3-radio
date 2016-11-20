#include "script_component.hpp"

if (!isServer) exitWith {};


["TFAR_StaticRadioEvent", {
    params ["_weaponHolder","_frequencies","_channel","_speaker"];
diag_log ["TFAR_StaticRadioEvent",_this];
    [_weaponHolder,parseNumber _channel] call TFAR_static_radios_fnc_setChannel;
    [_weaponHolder,call compile _frequencies] call TFAR_static_radios_fnc_setFrequencies;
    [_weaponHolder,_speaker] call TFAR_static_radios_fnc_setSpeakers;


}] call CBA_fnc_addEventHandler;
