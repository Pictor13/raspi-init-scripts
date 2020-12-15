# Config your RaspberryPi

**Model:** *Pi4 (8GB)*

Should run good also with 2-8GB of RAM.

**IMPORTANT:** do not store secrets or personal informations in the repository files.

Also, remember to close and reopen your shell, after running any script; or source via ` . ~/.bashrc` to update the current shell.

## Instructions

1. define your personal info (e.g. email) and secrets into `config/.personal.env`
- duplicate the *dist* config, with `mv config/.personal.env.dist config/.personal.env`
- `nano config/.personal.env` and and specify your custom settings (no need to set `GIT_` envs if not using *git*)

2. run `./config/install-custom-bash-config` to copy config files to `pi` user root
- reboot, or open a new shell, or run ` . /home/pi/.bashrc`, in order to make your config effective
**NOTE:** does not support other user name than `pi`, for now.

3. configure WiFi & Ethernet network interfaces with static IPs
- ensure envs exist in `.personal.env` and run:
```
sudo ip addr add “$WIFI_IP/$SUBNET_MASK" dev wlan0
sudo ip addr add “$ETHERNET_IP/$SUBNET_MASK" dev eth0
sudo ip link set dev wlan0 up
sudo ip link set dev eth0 up
sudo ip route add default via "$GATEWAY"
```

## Additional commands (optional)

* `./install-docker` and *docker-compose*
* `./init-git` config, and install *github-cli*
* `./docker-run-pihole` to execute PiHole service inside a Docker container
* * from a machine in you network, run `nslookup flurry.com 192.168.0.50` (use RaspberryPi's IP here; find it with `ifconfig`), and ensure it's blocking the request (`Address: 0.0.0.0`). Legit domains should instead resolve correctly.

## Additional notes

* run all the `bin` commands from this project root directory
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

* add script for the RasPi to configure static local IP (`$SERVERIP` from *.personal.env*
* support other users than default `pi`

