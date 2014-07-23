private ["_part_out","_part_in","_qty_out","_qty_in","_qty","_buy_o_sell","_textPartIn","_textPartOut","_needed","_started","_finished","_animState","_isMedic","_total_parts_out","_abort","_removed","_tradeCounter","_next_highest_bar","_third_highest_bar","_next_highest_conv","_third_highest_conv","_third_parts_out_raw","_third_parts_out","_remainder","_next_parts_out_raw","_next_parts_out","_activatingPlayer","_traderID","_total_trades"];

if(DZE_ActionInProgress) exitWith { cutText ["Trade already in progress." , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

// Test cannot lock while another player is nearby
//_playerNear = {isPlayer _x} count (player nearEntities ["CAManBase", 12]) > 1;
//if(_playerNear) exitWith { DZE_ActionInProgress = false; cutText ["Cannot trade while another player is nearby." , "PLAIN DOWN"];  };


_finish_trade = {
	{player removeAction _x} forEach s_player_parts;s_player_parts = [];
	s_player_parts_crtl = -1;
	DZE_ActionInProgress = false;
	dayzTradeResult = nil;
};


_name = _this select 0;
_textPart = _this select 1;
_price = _this select 2;
_activatingPlayer = player;
_player_wealth = _activatingPlayer getVariable ["wealth",0];

_price = if (typeName _price == "STRING") then { parseNumber _price } else { _price };
_player_wealth = if (typeName _player_wealth == "STRING") then { parseNumber _player_wealth } else { _player_wealth };

_emptySlots = [_activatingPlayer] call BIS_fnc_invSlotsEmpty;
_free_magazine_slots = _emptySlots select 4;

_tradeCounter = 0;



if(_free_magazine_slots < 1) exitWith { 
	_needed =  _qty_in - _qty;
	cutText ["You have no room in your inventory.", "PLAIN DOWN"];
	DZE_ActionInProgress = false;
};

_total_trades = floor(_player_wealth / _price);
if (_total_trades < 1) exitWith {
	_needed =  _price - _player_wealth;
	cutText [format["You need another %1 %2",_needed,EpochCurrency] , "PLAIN DOWN"];
	call _finish_trade;
};
if (_total_trades > _free_magazine_slots) then {
	_total_trades = _free_magazine_slots;
};

_abort = false;

// perform number of total trades
for "_x" from 1 to _total_trades do {
	_tradeCounter = _tradeCounter + 1;

	// cutText ["Starting trade, stand still to complete.", "PLAIN DOWN"];
	if(_total_trades == 1) then { 
		cutText [format["Starting trade, stand still to complete trade.",_tradeCounter,_total_trades] , "PLAIN DOWN"];
	} else {
		cutText [format["Starting trade, stand still to complete trade %1 of %2.",_tradeCounter,_total_trades] , "PLAIN DOWN"];
	};
	player playActionNow "Medic";

	r_interrupt = false;
	_animState = animationState player;
	r_doLoop = true;
	_started = false;
	_finished = false;
	
	while {r_doLoop} do {
		_animState = animationState player;
		_isMedic = ["medic",_animState] call fnc_inString;
		if (_isMedic) then {
			_started = true;
		};
		if (_started and !_isMedic) then {
			r_doLoop = false;
			_finished = true;
		};
		if (r_interrupt) then {
			r_doLoop = false;
		};
		sleep 0.1;
	};
	r_doLoop = false;

	if (!_finished) exitWith { 
		r_interrupt = false;
		if (vehicle player == player) then {
			[objNull, player, rSwitchMove,""] call RE;
			player playActionNow "stop";
		};
		cutText ["Canceled Trade." , "PLAIN DOWN"];
	};

	if (_finished) then {
		_player_wealth = _activatingPlayer getVariable ["wealth",0];
		if (_player_wealth >= _price) then {
			/*PVDZE_obj_Trade = [_activatingPlayer,_traderID,0];
			publicVariableServer  "PVDZE_obj_Trade";

			waitUntil {!isNil "dayzTradeResult"};
			if (dayzTradeResult == "PASS") then {*/
				_activatingPlayer setVariable["wealth",(_player_wealth - _price),true];
				player addMagazine _name;
				_abort = false;
				cutText [format["Traded %1 %2 for %3",_price,EpochCurrency,_textPart], "PLAIN DOWN"];
				PVDZE_plr_Save = [_activatingPlayer,(magazines _activatingPlayer),true,true] ;
publicVariableServer "PVDZE_plr_Save";
			//} else {
			//	cutText [format["Insufficient Stock %1",_textPart] , "PLAIN DOWN"];
			//	_abort = true;
			//};
		} else {
			_needed =  _price - _player_wealth;
			cutText [format["You need another %1 %2",_needed,EpochCurrency] , "PLAIN DOWN"];
			_abort = true;
		};
	};
	sleep 1;

	if(_abort) exitWith {};
};
call _finish_trade;