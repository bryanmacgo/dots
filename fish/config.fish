if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source

set -g fish_color_command green --bold
set -g fish_greeting
set -g fish_color_autosuggestion B9B4C7

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias rank "sort|uniq -c | sort -nr | head -n 3"
alias git-undo "git reset HEAD~"
alias pod-i "cd ios;rm Podfile.lock;rm -rf Pods;pod install;cd .."
alias metro "npx react-native start --reset-cache"
alias cd-ibk "cd dev/react-native/ibk-app/"

set -gx EDITOR code

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
fish_add_path /opt/homebrew/bin


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH" 