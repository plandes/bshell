# Manage multiple shells in Emacs buffers

[![MELPA badge][melpa-badge]][melpa-link]
[![MELPA stable badge][melpa-stable-badge]][melpa-stable-link]
[![Travis CI Build Status][travis-badge]][travis-link]

This package allows an Emacs user to create, delete, rename and fast swtich
between multiple inferior shells using the [buffer-manager] library.  This is
done by extending the `buffer-manage` and using its functions and keybindings
to manage multiple inferior shells.  To summarize, this includes:
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

You can start a new shell with `C-x C-h`.  Do this again to get another shell
that lives as a *separate* process in a buffer.  Use `C-tab` to get a list of
shells in the *Entries* buffer where you can rename, delete, switch or add new
shells.  To "fast" switch use `C-x C-h`, which changes the current window's
shell to the last used or next shell based on the [current cycling] method.
See the [shell key bindings](#key-bindings) and [buffer manage key bindings]
for all key bindigns.


### Key Bindings

Use `C-tab` to enter the shell entry management mode (see [buffer-manage
entries mode]).  While *in* a shell buffer the following key bindings apply:

|Key                   |Function                           |Description
|---------------------:|-----------------------------------|-----------------------------------------------------------
|`<C-tab>`             |bshell-list                        |In this buffer, you can rename and go to shells.
|`<C-M-tab>`           |bshell-new                         |Create a new shell entry.
|`C-x C-h`             |bshell-switch *                    |Switch to shell NAME, which is prompted from the user.
|`C-c C-t`             |bshell-rename                      |Rename the buffer entry shells.
|`C-c C-g`             |bshell-jump-directory              |Jump to a bookmark in the current buffer.
|`C-c C-q`             |bshell-switch-by-working-directory |Switch to an entry prompting by working directory.
|`C-x C-'`             |bshell-toggle-cycle-method         |Toggle cycle methods (i.e. last visited vs. next buffer).

\* **Note:** `C-x C-h` invokes `bshell-switch`, which creates a new shell when
none already exist.  It does nothing when there is only one shell and fast
swtiches when there are more than one.


## Changelog

An extensive changelog is available [here](CHANGELOG.md).


## License

Copyright © 2017 Paul Landes

GNU Lesser General Public License, Version 2.0


<!-- links -->
[buffer-manager]: https://github.com/plandes/buffer-manage
[current cycling]: https://github.com/plandes/buffer-manage#fast-switching
[buffer manage key bindings]: https://github.com/plandes/buffer-manage#key-bindings
[buffer-manage entries mode]: https://github.com/plandes/buffer-manage#key-bindings

[melpa-link]: https://melpa.org/#/bshell
[melpa-stable-link]: https://stable.melpa.org/#/bshell
[melpa-badge]: https://melpa.org/packages/bshell-badge.svg
[melpa-stable-badge]: https://stable.melpa.org/packages/bshell-badge.svg
[travis-link]: https://travis-ci.org/plandes/bshell
[travis-badge]: https://travis-ci.org/plandes/bshell.svg?branch=master
