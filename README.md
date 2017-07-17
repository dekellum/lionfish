# Lionfish

A [Puma] sample application, including Linux [systemd configuration]
for boot, monitoring and graceful (e.g. zero requests lost) restarts.

See the configuration in /systemd. The socket config has systemd
opening the acceptor socket and passing along to Puma using socket
activation.

[Puma]: http://github.com/puma/puma
[systemd configuration]: https://github.com/puma/puma/blob/master/docs/systemd.md

