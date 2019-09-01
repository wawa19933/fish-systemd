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

If you have issue with `systemctl` auto-completion (see [issue](https://github.com/fish-shell/fish-shell/issues/5689)),
use branch `fish-3.0.2`

```shell
$ fisher add wawa19933/fish-systemd@fish-3.0.2
```
