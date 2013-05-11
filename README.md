# rohn does dotfiles
with incredible thanks to [holman's](http://github.com/holman) [dotfiles](http://github.com/holman/dotfiles)
for the start and the inspiration for not just the dotfiles but also for the bootstrap
and the readme kickstarts. My intent is to deviate more than a little, and tweak more
than some, so instead of forking I'm starting a new repo all my own but acknowledging
the intelligence behind it.

## dotfiles

Your dotfiles are how you personalize your system. These are mine.
This is also my attempt to keep my environment reproducible, as close to a
[Github Boxen](http://boxen.github.com) one-button install as is possible with limited
investment in time and effort (so that makes it not really _very_ one-button installable - buyer beware).

## install

Run this:

```sh
git clone https://github.com/rohn/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/rohn/dotfiles/fork) or even better [fork Holman's](https://github.com/holman/dotfiles/fork) since he's smarter, remove what you don't use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## bugs

Zach says in his repo that he wants this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. I'm going to try to respect that, however that
said, I do use this as *my* dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/rohn/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

As Zach said he forked [Ryan Bates's](http://github.com/ryanb) [dotfiles](http://github.com/ryanb/dotfiles),
I forked [Zach Holman's](http://github.com/holman) [dotfiles](http://github.com/holman/dotfiles) for
a while before the weight of **my** changes and **my** tweaks inspired me to finally roll my own.
A vast amount of the code in these dotfiles stem from or are inspired from Ryan's original project.
