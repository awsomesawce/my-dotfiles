# README.gitattributes

`.gitattributes` is still giving me issues regarding `core.autocrlf`.
I'm thinking about turning it off altogether.
`*.bat` scripts in msys2/ dir are being converted from crlf to lf...why...

> I actually think I figured it out.  It is because the top entry was `text eol=lf`
> instead of `text=auto`
