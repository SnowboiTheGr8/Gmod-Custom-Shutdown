-- This file should be in lua/autorun/server/sv_whatever.lua

concommand.Add( "_exit", function( ply )
	hook.Run("ShutDown") -- Call shutdown so MySQL stuff can save
	print("Server shutting down...")

	Entity(0):Remove() -- Kill server
end )
