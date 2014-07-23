private ["_amount","_bank","_wealth"];
_amount = parseNumber (_this select 0);
_bank = player getVariable ["bank", 0];
_wealth = player getVariable["wealth",0];
_wealth = if (typeName _wealth == "STRING") then { parseNumber _wealth } else { _wealth };
_bank = if (typeName _bank == "STRING") then { parseNumber _bank } else { _bank };
if (_amount < 1 or _amount > _wealth) exitWith {
	cutText ["You can not deposit more than you have.", "PLAIN DOWN"];
};
if ((_bank + _amount) > BankMaxDeposit) exitWith {
	cutText [format["The maximum deposit amount is %1", [BankMaxDeposit] call BIS_fnc_numberText], "PLAIN DOWN"];
};
player setVariable["wealth",(_wealth - _amount),true];
player setVariable["bank",(_bank + _amount),true];
PVDZE_plr_Save = [player,(magazines player),true,true] ;
publicVariableServer "PVDZE_plr_Save";
cutText [format["You have deposited %1 %2.", [_amount] call BIS_fnc_numberText, EpochCurrency], "PLAIN DOWN"];	