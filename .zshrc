# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/axelixx/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="false"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  virtualenv
  virtualenvwrapper
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias DCSwagger="docker run -d -p 80:8080 swaggerapi/swagger-editor"
alias HTTPSwagger="http-server swagger-editor"

alias ls='colorls --gs --sd'
alias lsa='colorls -a --sd'
alias lstree='colorls -t --gs'

alias gitpush='git push --set-upstream origin $@'
alias gitclean='git clean -f -d'
alias gitreset='git reset --hard HEAD'

alias SwaggerEditor='cd Documents/Refleqt/Pioneer/pioneer-telematics; git pull ; code swagger-api/api.yaml'
alias localhost='open http://localhost:8080'

alias editZsh='vim ~/.zshrc'
alias reloadZsh='source ~/.zshrc'
alias c='pygmentize -g'
alias Swagger='cd Documents/Refleqt/Tooling/Swagger'
alias Pioneer='cd Documents/Refleqt/Pioneer/pioneer-telematics-testing'
alias Refleqt='cd Documents/Refleqt'
alias Tooling='cd Documents/Refleqt/Tooling'
alias DCMicroservices='cd Documents/Refleqt/D\&C/'
alias runDCjar='java -jar -Dspring.profiles.active=local ms-client-application-0.0.1-SNAPSHOT.jar'

#MAVEN PIONEER TESTSUITES
alias mvnclean='mvn clean install -U -DskipTests'
alias mvnverify='mvn clean verify -fae -P$@ -P$@'


#LSCOLORS
export LSCOLORS="" 


#Environmental Variables
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=“$JAVA_HOME/bin:$PATH”
export ANDROID_HOME=“/Users/axelixx/Library/Android/sdk”
export PATH=“$ANDROID_HOME/tools:$PATH”
export PATH=“$ANDROID_HOME/platform-tools:$PATH”
export PATH="/usr/local/opt/openssl/bin:$PATH"

export SAUCE_USERNAME=Axelixx
export SAUCE_ACCESS_KEY=74c163f4-1e42-42b2-a360-0f9d76393c9e

#################
#POWERLEVELTHEME#
#################
POWERLEVEL9K_MODE='nerdfont-complete'
source  ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time date battery)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
DISABLE_UPDATE_PROMPT=true
source $(dirname $(gem which colorls))/tab_complete.sh

