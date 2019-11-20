#!/usr/bin/env sh 
 
## CARBS, Cem's Auto-Rice Bootstrapping Script
## Copyright (C) 2019 Cem Keylan <cem@ckyln.com>

##    This program is free software: you can redistribute it and/or modify
##    it under the terms of the GNU General Public License as published by
##    the Free Software Foundation, either version 3 of the License, or
##    (at your option) any later version.
##
##    This program is distributed in the hope that it will be useful,
##    but WITHOUT ANY WARRANTY; without even the implied warranty of
##    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##    GNU General Public License for more details.
##
##    You should have received a copy of the GNU General Public License
##    along with this program.  If not, see <https://www.gnu.org/licenses/>.


out() { printf "$1\\n"; }
error() { out "==> ERROR: $@"; } >&2
warning() { out "==> WARNING: $@"; } >&2
msg() { out "==> $@"; }
msg2() { out "  -> $@";}
die() { error "$@"; exit 1; }


[ "$HOME" = "$1" ] || die "Not continuing because target directory is different than HOME directory" 
[ -e $HOME/.local/bin/lockme ] || die "Could not find lockme, exiting"

cat <<EOF | sudo tee /etc/systemd/system/lockme.service >/dev/null 
[Unit] 
Description=Lock X session using lockme 
Before=sleep.target 
 
[Service] 
User=$USER 
Environment=DISPLAY=:0 
ExecStart=$HOME/.local/bin/lockme 
 
[Install] 
WantedBy=sleep.target 
 
EOF 
sudo systemctl daemon-reload || die "There was an error while reloading daemon"
sudo systemctl enable lockme.service || die "Could not enable lockme service"
msg "Created systemd service for lockme"
