@ECHO OFF

netsh advfirewall firewall add rule name="Firebird" dir=in action=allow protocol=TCP localport=3050

netsh firewall add portopening protocol=TCP port=3050 name="Firebird" mode=ENABLE scope=SUBNET

goto end

:end
