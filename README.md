CARBS
=====

Cem's Auto Rice Bootstrapping Script

CARBS installs a fully functional desktop environment.


Installation
------------

Carbs can be installed by typing

  bash -c "(curl -L cemkeylan.com/carbs)"

Alternatively, you can clone the repository and simply execute the script.


Usage
-----

```
carbs [options]
  -p <progs.csv>      Use an alternative progs.csv file (must be local)
  -r <repo url>       Use an alternative dotfiles repo
  -d <location>       Specify another place to install dotfiles
  -n		      Run the script noninteractively (Requires sudo)
  -P <filename>       Download progs.csv and exit
  -k <X11-Keymap>     Set X11 Keymap

  -h/--help	      Print this help message (to the terminal)
```


Requirements
------------

CARBS has been successfully tested on these distros:

* Arch Linux
* Arch Linux 32
* Arch Linux Arm
* Manjaro
* Manjaro 32
* Manjaro Arm
* Anarchy Linux
* Parabola GNU/Linux-Libre Systemd
* Parabola GNU/Linux-Libre OpenRC


It is always best to have a fresh install


Ideas and Suggestions
---------------------

If you have problems, or suggestions feel free to send me a mail at cem (at) ckyln dot com <cem@ckyln.com>


Known Issues
------------

[Parabola GNU/Linux-Libre OpenRC] There is an issue I am having getting Xorg to run. Getting permission 
errors even though the user is added to the video group. 
