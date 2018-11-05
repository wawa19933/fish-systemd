# Author:       Sergio Scalpone
# Description:  `systemctl` aliases to include `sudo`
# Odessa, 2018

if type -q balias
  set alias balias
else
  set alias alias
end

# Systemd
set -l user_commands \
      list-units list-sockets is-active status show help list-unit-files\
      is-enabled list-jobs show-environment cat list-machines

set -l sudo_commands \
      start stop reload restart try-restart isolate kill \
      reset-failed enable disable reenable preset mask unmask \
      link load cancel set-environment unset-environment \
      edit daemon-reload daemon-reexec

for c in $user_commands
  eval $alias sc-$c "systemctl $c"
end

for c in $sudo_commands
  eval $alias sc-$c "sudo systemctl $c"
end

