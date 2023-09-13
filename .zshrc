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
  git commit -m ":sparkles: $1"
}
gfact() {
  git commit -m ":recycle: $1"
}
gtest() {
  git commit -m ":white_check_mark: $1"
}
gfix() {
  git commit -m ":bug: $1"
}
gconfig() {
  git commit -m ":wrench: $1"
}
gdoc() {
  git commit -m ":memo: $1"
}
gfire() {
  git commit -m ":fire: $1"
}
gart() {
  git commit -m ":art: $1"
}
gwipp() {
  git commit -m ":construction: $1"
}
gasset() {
  git commit -m ":bento: $1"
}
gapple() {
  git commit -m ":apple: $1"
}
gandroid() {
  git commit -m ":robot_face: $1"
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
alias goproj="cd ~/Documents/Projets/TF1/mobile-news/"
alias fresh="git fetch --all && git rebase origin/master --autostash"
alias bde="cd ios && bundle exec pod install && cd .."
alias ys="yarn start"
alias gohome="cd ~"
alias gom-ssh="ssh-add --apple-use-keychain ~/.ssh/id_ed25519 && git checkout master && git pull --autostash"
alias adr="adb reverse tcp:8081 tcp:8081"
alias install-ios="xcrun simctl install booted  ~/Library/Developer/Xcode/DerivedData/mobileNews-fntlilzifnxoylepzygptbtsivqe/Build/Products/Debug-iphonesimulator/mobileNews.app"
alias uninstall-ios="xcrun simctl uninstall booted com.tf1.mobilenews.staging"
alias uninstall-android="adb uninstall com.tf1.mobilenews.staging"
alias install-android="adb install -t ./android/app/build/outputs/apk/staging/debug/app-staging-debug.apk"

export HOMEBREW_NO_AUTO_UPDATE=1
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:/usr/local/bin/adbme

