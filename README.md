# infra-xon

Scripts/config I use to host few dedicated xonotic servers.

## Goals

  * Simplicity
  * Map/package separation between servers
  * Integration with modern linux tools for managing services (systemd, journald)
  * Integration with xonotic-map-manager (xmm)
 
## Initial setup

to be written

## Commands

### Start/stop/restart a single xonotic server:

```
# systemctl start xonotic@servername
# systemctl stop xonotic@servername
# systemctl resatrt xonotic@servername
```

TODO: add reload command

### Start/stop/restart all xonotic servers

```
# systemctl start xonotic-all
# systemctl stop xonotic-all
# systemctl restart xonotic-all
```

### View console log of a server

```
journalctl -xe -u xonotic@servername
```

To view the log in the "follow" mode, like `tail -f` run:

```
journalctl -xe -f -u xonotic@servername
```

### Send commands to server

For the sake of simplicity I decided not to use tmux/screen. There are two ways of sending commands:

  1. `echo command > /var/run/xonotic/servername.fifo` (you have to check the output using journalctl)
  2. Use awesome drcon tool: https://github.com/bacher09/darkplaces-rcon
