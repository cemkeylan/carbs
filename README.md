# CARBS
**Cem's Auto-Rice Bootstrapping Script** *(Not a fork of LARBS)*

**Documentation [(PDF)](https://cemkeylan.com/files/carbs.pdf) [(HTML)](https://cemkeylan.com/documentation)**

Documentation is also installed in /usr/share/doc/carbs/documentation.pdf

CARBS is a bash script for installing a meta desktop environment on Arch Linux and derivatives.

I wanted to make a custom script that will make it easy for people to install my rice. 

I have successfully tested this script on a
1. Fresh install of Arch x86_64 x86
1. Fresh install of Manjaro x86_64 x86
1. Fresh install of Anarchy Linux x86_64

I occasionally test the script on my laptops, but I test every single commit on a container environment to make sure it works.

## Architectures
Currently, this script runs very well on 64-bit. You can install it on 32-bit as well, however, there are some problems with compton on 32-bit, I am looking into that. ARMv8 (or aarch64, you name it) currently does NOT work. My plan for ARM is to create a new rice and integrate it into this script.

## Ideas and Suggestions
If you have problems, or suggestions feel free send me a mail at [cem@ckyln.com](mailto:cem@ckyln.com). 

You modified my dotfiles, CARBS, or the documentation? Great! Send me the patch files via mail. I would really appreciate feedback.
