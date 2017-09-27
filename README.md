# Gmod-Custom-Shutdown
Allows you to handle the server shutdown yourself

Our gamepanel calls `_exit` before it calls `exit`. Adding a console command called `_exit` gives you the ability to handle shutdowns yourself.

`example.lua` file uses this in an example to enable crash screens to show on players. This prevents players being kicked for "Server is shutting down".
