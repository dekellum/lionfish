# Lionfish

A [Puma] sample application, including Linux [systemd configuration]
for boot, monitoring and graceful (e.g. zero requests lost) restarts.

See the configuration in /systemd. The socket config has systemd
opening the acceptor socket and passing along to Puma using socket
activation.

[Puma]: http://github.com/puma/puma
[systemd configuration]: https://github.com/puma/puma/blob/master/docs/systemd.md

## Public Domain

This work is not copyrighted. It is made available on an "as is"
basis, without warranties or conditions of any kind, either express or
implied. Do whatever you want with it, with absolutely no
restrictions, and no permission required.
