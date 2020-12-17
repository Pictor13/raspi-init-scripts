# Config your RaspberryPi

**Model:** *Pi4 (8GB)*
**OS:** Raspbian GNU/Linux 10 (buster)

Should run good also with 2-4GB of RAM.

**IMPORTANT:** do not store secrets or personal informations in the repository files.

Also, remember to close and reopen your shell, after running any script; or source via ` . ~/.bashrc` to update the current shell.

## Instructions

1. define your personal info (e.g. email) and secrets into `config/.pimp.env`
- duplicate the *dist* config, with `mv config/.pimp.env.dist config/.pimp.env`
- `nano config/.pimp.env` and and specify your custom settings (no need to set `GIT_` envs if not using *git*)
**NOTE:** 

2. run `./config/install-custom-bash-config` to copy config files to `pi` user root
- reboot, or open a new shell, or run ` . /home/pi/.bashrc`, in order to make your config effective
**NOTE:** does not support other user name than `pi`, for now.

## Additional commands (optional)

* `bin/install-docker` and *docker-compose*
* `bin/init-git` config, and install *github-cli*
* `bin/docker-run-pihole` to execute PiHole service inside a Docker container
* * from a machine in you network, run `nslookup flurry.com 192.168.0.50` (use RaspberryPi's IP here; find it with `ifconfig`), and ensure it's blocking the request (`Address: 0.0.0.0`). Legit domains should instead resolve correctly.

## Additional notes

* run all the `bin` commands from this project's root directory
* if you install Tilix terminal emulator, remember to configure the execution as login shell (see [manual](https://gnunn1.github.io/tilix-web/manual/vteconfig/#2-or-use-a-login-shell))
* to change keyboard shortcuts edit `/etc/xdg/openbox/lxde-pi-rc.xml` and add your keybind, e.g
```
    <keybind key="C-A-Delete">
      <action name="Execute">
         <command>lxde-pi-shutdown-helper</command>
      </action>
    </keybind>

```
*Note:* you can check the [Openbox wiki](http://openbox.org/wiki/Help:Bindings).

## TODO:

* support other users than default `pi`
* support changing hostname via env var

