# oh-my-zsh custom folder

These files are not tracked by git.

Remember to copy to `~/.dotfiles/zsh_custom/` git repo when making big changes!

## List

- `zsh_aliases.zsh`: a list of aliases not included in `~/.zshrc`
Check /usr/share/zsh/ dirs to check for other completions.

**Notice**: Currently, completion functions installed into `/usr/share/zsh/vendor-completions` aren't being immediately recognized.  The workaround is to copy the completions you want to use into `$ZSH/completions` and doing this:

```bash
rm -f ~/.zcompdump && compinit
```
