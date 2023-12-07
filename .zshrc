# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Add identity on terminal opening
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(fnm env --use-on-cd)"
eval "$(rbenv init - zsh)"

export ZSH="/Users/delphine.bugner/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

alias gcancel="git reset HEAD~1 --soft"

gfit() {
  git commit -m "feat $1"
}
gfact() {
  git commit -m "refacto $1"
}
gtest() {
  git commit -m "test $1"
}
gfix() {
  git commit -m "fix $1"
}
gconfig() {
  git commit -m "chore $1"
}
gdoc() {
  git commit -m "doc $1"
}
gfire() {
  git commit -m "fire $1"
}
gart() {
  git commit -m "style $1"
}
gwipp() {
  git commit -m "wip $1"
}
gasset() {
  git commit -m "asset $1"
}

tu() {
  yarn jest $1 -u --no-coverage
}

ttu() {
  yarn jest $1 --watch -u --no-coverage
}

ttu-all() {
  yarn jest $1 --watchAll -u --no-coverage
}

ZSH_DISABLE_COMPFIX=true

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1
# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

alias ok="git fetch --all && git rebase origin/master --autostash && git push -u origin HEAD && yarn test -u --no-coverage"
alias ok-force="git fetch --all && git rebase origin/master --autostash && git push --force-with-lease && yarn test -u --no-coverage"
alias gom="git checkout master && git pull --autostash"
alias gomain="git checkout main && git pull --autostash"
alias goproj="cd ~/Documents/Projets/TF1/mobile-news/"
alias fresh="git fetch --all && git rebase origin/master --autostash"
alias freshmain="git fetch --all && git rebase origin/main --autostash"
alias bde="cd ios && bundle exec pod install && cd .."
alias bd="bundle exec pod install"
alias ys="yarn start"
alias yt="yarn test"
alias gohome="cd ~"
alias adr="adb reverse tcp:8081 tcp:8081"
alias install-ios="xcrun simctl install booted  ~/Library/Developer/Xcode/DerivedData/mobileNews-fntlilzifnxoylepzygptbtsivqe/Build/Products/Debug-iphonesimulator/mobileNews.app"
alias uninstall-ios="xcrun simctl uninstall booted com.tf1.mobilenews.staging"
alias uninstall-android="adb uninstall com.tf1.mobilenews.staging"
alias install-android="adb install -t ./android/app/build/outputs/apk/staging/debug/app-staging-debug.apk"
alias gcm="git commit --amend"
#Maestro
export PATH=$PATH:$HOME/.maestro/bin

# flashlight
export PATH="/Users/delphinebugner/.flashlight/bin:$PATH"
export FLASHLIGHT_API_KEY="fl_40b8abf838d34cdee3555ffc252c4ec5"

export HOMEBREW_NO_AUTO_UPDATE=1
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:/usr/local/bin/adbme
