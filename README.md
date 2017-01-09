# Manage multiple shells in Emacs buffers

[![Travis CI Build Status][travis-badge]][travis-link]

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

In your `~/.emacs` start up file include:
```lisp
(require 'bshell)
```

### Key Bindings

Use `C-tab` to enter the shell entry management mode (see
[buffer-manage entries mode](https://github.com/plandes/buffer-manage#key-bindings)).
While *in* a shell buffer the following key bindings apply:

|Key               |Function                        |Description
|-----------------:|--------------------------------|-----------------------------------------------------------
|`<C-tab>`         |bshell-list                     |In this buffer, you can rename and go to shells.
|`<C-M-tab>`       |bshell-new                      |Create a new shell entry.
|`C-x C-h`         |bshell-switch                   |Switch to shell NAME, which is prompted from the user.
|`C-c r`           |bshell-rename                   |Rename the buffer entry shells.
|`C-c g`           |bshell-jump-directory           |Jump to a bookmark in the current buffer.
|`C-x C-'`         |bshell-toggle-cycle-method      |Toggle cycle methods (i.e. last visited vs. next buffer).


## License

Copyright © 2017 Paul Landes

GNU Lesser General Public License, Version 2.0
