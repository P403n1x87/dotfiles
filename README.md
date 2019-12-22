# Usage

Clone this repository into a local bare one with

~~~ shell
git clone --bare <remote repo> $HOME/.dotfiles.git
~~~

then source the `.dotfiles` file inside it.

If starting from scratch, define the following alias/function

~~~ bash
function dotfiles {
   /usr/bin/git --git-dir=$DOTFILES_REPO --work-tree=$HOME $@
}
~~~

and then issue

~~~ bash
git init --bare $HOME/.dotfiles.git
dotfiles config --local status.showUntrackedFiles no
~~~
