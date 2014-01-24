# Dotfiles

## Explanation
This is based on Mathias' amazing repo of dotfiles at [github](https://github.com/mathiasbynens/dotfiles/). Serves as a quick way for me to setup certain dev machine defaults when I switch between work machines or when getting a new one. Essentially what this does for me is to allow myself to execute a single command to 'bootstrap' all my dotfiles and configs, as well as install all the apps and dev tools I use on a daily basis. In addition I want it to be able to re-execute to synchronize anything that might've been changed. Finally I wanted to make the process of re-integrating the changes back in as easy as possible so other machines can likewise be updated.

To understand more, feel free to look up this amazing tutorial put put by Mathias on [Nettuts](http://net.tutsplus.com/tutorials/tools-and-tips/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles/)

## Getting Started
* You need to be an administrator (for `sudo`).
* You need to install [XCode Command Line Tools](https://developer.apple.com/downloads/index.action?=command%20line%20tools), which are available as a _much smaller_ download.

### Actual Installation
You can clone the repo wherever you want, I followed Mathias' preference and kept it within [~/Projects/dotfiles].

Run this down to just quickly bootstrap everything (warning: this are all my *own* dotfile configurations so it might not be the thing you want! For more infor on what they do, check out [Mathias' Nettuts](http://net.tutsplus.com/tutorials/tools-and-tips/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles/))

```sh
git clone https://github.com/jurvis/dotfiles.git && cd dotfiles && source bootstrap.sh
```

Alternatively you can just clone the repo into the folder, configure it, then [cd] to [~/Projects/dotfiles] or whatever directory you did set, the run [source bootstrap.sh]

To update, [cd] to you local [dotfiles] repository and run the following command:
```sh
source bootstrap.sh
```

### Sensible OS X defaults
When you set up a new mac, running some sensible OS X defaults set by Mathias and tweaks by me can help:
```sh
./.osx
```
REMEMBER: this is how I like my Mac set up and running and might not work for everyone - do customize it according to your own requirements and comment out what you don't need! For example, I disabled notification centre!

### Install Homebrew
Running this will help install some common [Homebrew](http://brew.sh/) formulae.
```sh
./.brew
```

### Installing native apps with [brew cask]
You can use [brew cask] to download your list of native apps using CLI instead of GUI by running:
```sh
./.cask
```

##Credit & Feedback:
[Mathias Bynen's dotfiles](https://github.com/mathiasbynens/dotfiles)
His collection of osx defaults is really amazing and as I further customize my own dotfiles, he has done most of the heavy lifting.

Please highlight an [issue](https://github.com/jurvis/dotfiles/issues) if you see one!
