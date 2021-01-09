# oh-my-zsh config

My [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) configuration. Most of
it consists of awesome aliases, which speed up my terminal work and make my life
hell on other systems. There's also a theme, which is inspired by the classic
Gentoo shell prompt.

Obviously, this is messy and very specific to my way of work.

## Usage

(_the way I actually use it on my system(s), probably won't be very useful on
yours_)

This repository lives in the `~/.oh-my-zsh/custom` directory. The following is
present in `~/.zshrc`:

```bash
ZSH_THEME="forkbomb"
plugins=(<plugins needed> my-git-aliases)
```

