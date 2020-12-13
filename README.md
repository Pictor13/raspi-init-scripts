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
**NOTE:** does not support other user name than `pi`, for now.

## Additional commands (optional)

* `./install-docker` and *docker-compose*
* `./init-git` config, and install *github-cli*
* `./docker-run-pihole` to execute PiHole service inside a Docker container
* * from a machine in you network, run `nslookup flurry.com 192.168.0.50` (use RaspberryPi's IP here; find it with `ifconfig`), and ensure it's blocking the request (`Address: 0.0.0.0`). Legit domains should instead resolve correctly.

## TODO:

* add script for the RasPi to configure static local IP (`$SERVERIP` from *.personal.env*