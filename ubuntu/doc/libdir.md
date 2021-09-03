# lib directory

The `ubuntu/lib/` directory is an experiment for developing a personal shell-scripting library.

Files in `lib` are meant to be sourced from other scripts in an attempt to reduce boilerplate.
Especially with writing basic functions like a `die` function, or a function to
output usage information or handle arguments.

I find myself writing an if statement to test number of arguments given for every...single...script and/or function.

```bash
if [ "$#" -eq 0 ]; then
    echo "$usage"
    return 1
fi
```

Or something of that nature.

This is why I'm trying to _modularize_ my shell scripting.  Kind of like how _Powershell Modules_ are.
