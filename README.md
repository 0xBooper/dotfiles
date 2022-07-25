# 0xBooper's dotfiles

### Notice
My dotfiles may **NOT** work on all distros.

### A collection of my dotfiles.

A few **notable** things are:

- [my Neovim config](https://github.com/0xBooper/dotfiles/tree/main/.config/nvim)
- [my bash config and prompt](https://github.com/0xBooper/dotfiles/tree/main/.config/bash)
- [my awesomeWM config](https://github.com/0xBooper/dotfiles/tree/main/.config/awesome)
- [my Polybar config](https://github.com/0xBooper/dotfiles/tree/main/.config/polybar)

### Required things:

Some things that are required to be installed for my dotfiles to work:

- bash shell ( of course )
- zsh
- awesome WM
- neovim
- pfetch/neofetch (if neofetch, adjust bash config accordingly)

### Getting the wallpapers (optional, but recommended):
First, clone the repo. Run:
`git clone https://github.com/makccr/wallpapers.git`

Second, go to the wallpapers. Run:
`cd wallpapers/2020`

Lastly, move the wallpapers to the correct directory. Run:
`mkdir --parents ~/Media/Wallpapers && mv *.jpg ~/Media/Wallpapers`

The wallpapers should be all set up!
To randomize it, replace `nitrogen --restore` with `nitrogen --random ~/Media/Wallpapers/`
Otherwise, run `nitrogen` and select a background. 

### You could also...
You can also just run my (arch based distros only, debian support coming soon) dotfiles deployment script [here](https://github.com/0xBooper/dotfiles-deploy)

### Credits
The wallpapers are taken from [Makccr's](https://github.com/makccr) [Wallpapers](https://github.com/makccr/wallpapers) repo.
I use them, since it is a really great collection of wallpapers to use.
