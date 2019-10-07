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

nvim -v >/dev/null 2>&1 || die "nvim does not seem to be installed, stopping script"
out "Installing nvim plugins"
curl -fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim || die 'Could not download plug.vim'
[ -e $HOME/.config/nvim/init.vim ] || die "init.vim does not exist in home directory"
nvim -c "PlugInstall | :q | :q"
msg "nvim post-installation complete"

