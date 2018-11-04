"checkForDatabase" addPublicVariableEventHandler{
	private ["_data"];
	_data = (_this select 1);
	_clientID = (_data select 0);
	_UID = (_data select 1);
	_playerName = (_data select 2);
	
	_database = ["new", _UID] call OO_INIDBI;
	_doesFileExist = "exists" call _database;
	if(_doesFileExist)then	{
		hint "file does exist;
	}	else	{
		hint "file does not exists, creating database";
		null =[_clientID,_UID,_playerName] execVM "createDatabase.sqf";
	};
};
