-- This file should be in lua/autorun/server/sv_whatever.lua

concommand.Add( "_exit", function( ply )
	hook.Run("ShutDown") -- Call this to get MySQL and stuff to save
	print("Server shutting down...")

	Entity(0):GetAnimInfo(9999999999) -- Crashes the server to trigger reboot
end )
