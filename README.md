# Manage multiple shells in Emacs buffers [![MELPA badge][melpa-badge]][melpa-link] [![Travis CI Build Status][travis-badge]][travis-link]

  [melpa-link]: https://melpa.org/#/bshell
  [melpa-stable-link]: https://stable.melpa.org/#/bshell
  [melpa-badge]: https://melpa.org/packages/bshell-badge.svg
  [melpa-stable-badge]: https://stable.melpa.org/packages/bshell-badge.svg
  [travis-link]: https://travis-ci.org/plandes/bshell
  [travis-badge]: https://travis-ci.org/plandes/bshell.svg?branch=master

This package allows an Emacs user to create, delete, rename and fast swtich
between multiple inferior shells using
the [buffer-manager](https://github.com/plandes/buffer-manage) library.  This
is done by extending the `buffer-manage` and using its functions and
keybindings to manage multiple inferior shells.  To summarize, this includes:
* A major mode for switching to, deleting and starting new shells.
* Fast switching with customized key bindings through the customize framework.
* Track and rename shells by name through the shell entry management mode.
* Interact with buffer shell (entries) as objects with a straight forward
  API.


## Usage

Using the default bindings, use:
* `M-x bshell` or `C-x C-h` to create a new shell
* `C-tab` to enter the shell entry management mode.
* `C-c r` to rename the shell.


## License

Copyright © 2017 Paul Landes

GNU Lesser General Public License, Version 2.0
