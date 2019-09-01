# fish-systemctl

Shortcuts for `systemctl` which allow to ommit `sudo`.
This plugin also adds abbreviations:

| Abbr | Command |
| ---- | ------- |
| sc | systemctl |
| scu | systemctl --user |
| jor | journalctl |
| jour | journalctl --user |

`systemctl` is a function which will prepend `sudo` when needed.

### Installation

```shell
$ fisher add wawa19933/fish-systemd
```
