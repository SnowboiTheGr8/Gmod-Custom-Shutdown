-- This file should be in lua/autorun/server/sv_whatever.lua

concommand.Add( "_exit", function( ply )
	if IsValid(ply) and !ply:IsSuperAdmin() then return end

	hook.Run("ShutDown") -- Call this to get MySQL and stuff to save
	print("Server shutting down...")

	table.Empty(debug.getregistry()) -- crash the server & trigger a restart
	Entity(0):GetAnimInfo(99999999) -- and this
	Entity(0):Input() -- they fixed this too
	Entity(0):Remove() -- They fixed this wat?
end )
