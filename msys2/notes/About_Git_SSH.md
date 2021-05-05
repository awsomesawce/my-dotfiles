# About Git SSH

Git works well when paired with an _ssh key_.
That is the typical way of connecting to a server like `github.com` from an OS like _Linux_ or _Mac_.\
But with _Git-for-Windows_, they have different ways of connecting to servers and handling credentials.

If you install [Git-for-Windows](https://github.com/git-for-windows/git) you usually have a program called [Git-Credential-Core](https://github.com/microsoft/Git-Credential-Manager-Core) or _Git-Credential_ that handles all the work.
It is included in the GFW installation.

Although **MSYS2** works well with the Windows environment, it does not usually recognize the _Git-Credential-Core_ system.
I should rephrase that.  I haven't gotten it to work correctly myself, but it might be possible.

The more _linuxy_ way of doing things is to just use `ssh`

## Setting up SSH connections for GitHub

This is mainly a set of instructions for myself so I can solve this problem more quickly next time I run into it.

> There is more information available on the [GitHub Site](https://docs.github.com/en/github/authenticating-to-github).

1. First thing to do is to create an ssh key if you don't have one already.

TODO: finish this document
