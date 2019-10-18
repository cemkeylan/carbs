#!/bin/sh

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

wget -V >/dev/null 2>&1 || die 'wget is not installed'
out "Installing carbs documentation to $HOME/.local/share/carbs/carbs.pdf"
mkdir -p $HOME/.local/share/carbs || die 'Could not create directory for carbs documentation'
wget -O $HOME/.local/share/carbs/carbs.pdf https://gitlab.cemkeylan.com/cemkeylan/carbsdocs/-/jobs/artifacts/master/raw/carbs.pdf\?job\=build || die 'Could not download carbs.pdf'

msg "Finished downloading documentation"
