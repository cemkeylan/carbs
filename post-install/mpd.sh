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

mpd --version >/dev/null 2>&1 || die "MPD is not installed"
mkdir -p $HOME/.mpd/playlists || die "Could not create mpd directories"
touch $HOME/.mpd/database
msg "Finished the configuration of MPD"

