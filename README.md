# Guppy

A [Fishwife] sample application, including Linux systemd configuration
for boot, monitoring and graceful (e.g. zero requests lost) restarts.

See the configuration in [/systemd]. The socket config has systemd
opening the acceptor socket and passing along to fishwife using
Jetty's and the JVM's support for inetd-style socket activation.

The service config uses a custom start script, [/bin/guppy] which
specifies compatible connections and customizes logging to be
reasonable for the systemd journal via STDERR.  You will need to
change the paths as appropriate.

[Fishwife]: http://github.com/dekellum/fishwife
[/systemd]: http://github.com/dekellum/guppy/tree/master/systemd
[/bin/guppy]: http://github.com/dekellum/guppy/blob/master/bin/guppy
