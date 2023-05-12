# FZF recent directories plugin
[![MIT License](img/mit_license.svg)](https://opensource.org/licenses/MIT)
![Zsh version 4.3.11 and higher](img/zsh_4.3.11_plus.svg)
[![GitHub stars](https://img.shields.io/github/stars/magidc/fzf-z.svg)](https://github.com/magidc/fzf-z/stargazers)
ZSH plugin to fuzzy search and navigate to recent directories.
It relies in the [Zsh-z](https://github.com/agkozak/zsh-z) plugin for managing recent directories and [FZF](https://github.com/junegunn/fzf) for fuzzy search, BOTH MUST BE INSTALLED. Results are shown sorted by the number of accesess to each directory.
This plugin is just an adapter, all credits go for authors of zsh-z and FZF for their amazing tools

## Table of Contents
- [Installation](#installation)
- [Usage](#usage)

## Installation
[Zsh-z](https://github.com/agkozak/zsh-z) plugin and [FZF](https://github.com/junegunn/fzf) MUST BE INSTALLED

Depending on the plugin manager you use, add following to your `.zshrc` file and source it.

### [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

1. Clone the repo into your custom plugins folder, usually at (~/.oh-my-zsh/custom/plugins/)

   ```bash
   git clone https://github.com/magidc/fzf-z ~/.oh-my-zsh/custom/plugins/fzf-z
   ```

2. Add `fzf-z` to .zshrc plugins list, usually at (~/.zshrc)

   ```shell
   plugins=(... fzf-z)
   ```

### [Zplug](https://github.com/zplug/zplug)

```shell
zplug "magidc/fzf-z"
```

### [Antigen](https://github.com/zsh-users/antigen)

```shell
antigen bundle "magidc/fzf-z"
```

### [Zgen](https://github.com/tarjoilija/zgen)

```shell
zgen load "magidc/fzf-z"
```

Source .zshrc file

```shell
source ~/.zshrc
```
## Usage
Just type Alt+z to see the fuzzy search list with recently accessed directories
