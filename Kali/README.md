# Kali Linux conf

Kali linux experimental configuration.  This is mainly for experimenting with advanced
configuration using the `/etc/wsl.conf` file.

Check the [docs](https://docs.microsoft.com/en-us/windows/wsl/wsl-config#wslconf) on 
Microsoft's website for more information.

## Defaults alteration

By default, WSL enables interop with your Windows environment by allowing you to start
Windows processes from the WSL commandline.
This can be shut off by using this config:

```conf
# Set whether WSL supports interop process like launching Windows apps and adding path variables. Setting these to false will block the launch of Windows processes and block adding $PATH environment variables.
[interop]
enabled = false
appendWindowsPath = false
```

This is nice if you want a truely _isolated_ environment from the host machine.
