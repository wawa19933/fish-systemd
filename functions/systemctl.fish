function systemctl -d 'wraps privileged and user systemctl commands' -w systemctl
    set -l user_commands \
      list-units list-unit-files list-jobs list-timers \
      list-sockets list-dependencies list-machines \
      is-active is-enabled is-failed \
      status show help get-default show-environment cat 

    if contains -- --user $argv; or contains -- $argv[1] $user_commands
        command systemctl $argv
    else
        command sudo systemctl $argv
    end
end
