# oh-my-zsh config
My [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) configuration. Most of it consists of awesome aliases, which speed up my terminal work and make my life hell on other systems.

Perhaps it's not very elegant, but works for me.

## Usage
(_the way I actually use it on my system(s), probably won't be very useful on yours_)

This repository lives in the `~/.oh-my-zsh/custom` directory. The following in present in `~/.zshrc`:

```bash
ZSH_THEME="forkbomb"
plugins=(my-git-aliases ansible aws brew docker git git-extras git-prompt grunt lein mvn npm node osx rails ruby rvm sublime svn vagrant)
```
Note the custom `my-git-aliases` plugin in the list.
