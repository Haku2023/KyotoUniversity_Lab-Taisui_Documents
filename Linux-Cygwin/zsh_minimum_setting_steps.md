# cygwin zsh + oh-my-zsh + powerlevel10k + plugins installation minimum setting steps
> zsh is an extended bash with many improvements, oh-my-zsh is a framework for managing zsh configuration, powerlevel10k is a fast theme for zsh, and plugins can enhance the functionality of zsh.

1. **cygwind options** change theme to dracula
2. **cygwind options** change Terminal to xterm-256color
3. **cygwind options** change Window UI to en_US
4. **cygwind cli** if there is no */etc/passwd* file, run `mkpasswd -l > /etc/passwd`, then change the $USER last /bin/bash -> /bin/zsh
4. **cygwind cli** install zsh(from cygwin setup-x86_64.exe) and oh-my-zsh using `git clone` commands below
5. **cygwind cli** uncomment LANG=en_US.UTF-8 in *.zshrc* file
6. **cygwind cli** install powerlevel10k, choose the configuration at first time, also `p10k configure` command can be used later to reconfigure
7. **cygwind cli** install two plugins(zsh-autosuggestions, fast-syntax-highlighting)

```zsh
#<< minimum setting start
# install oh-my-zsh framework
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# change ZSH_THEME to powerlevel10k in .zshrc
ZSH_THEME="powerlevel10k/powerlevel10k"
# install zsh useful two plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
# set autosuggest highlight to chocolate in .zshrc
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#d2691e'
#<< minimum setting end

# if get used to this plugin, it willbe amazing, but hard for beginner
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
# these plugin older/slow for cygwin respectively, not recommended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
# haku recommended alias
alias vi="vim"
alias zrc="vi ~/.zshrc"
alias sou="source ~/.zshrc"
# reconfigure the powerlevel10k if needed
p10k configure
```
