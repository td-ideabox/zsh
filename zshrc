# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/trevord2/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="lambda"

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
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Tab completion now works when ascending directories "../"
zstyle ':completion:*' special-dirs true

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
plugins=(git)
export EDITOR=/usr/local/bin/vim

## PATH
# I'm prepending $PATH so that the order defined below is
# maintained
# Default Paths
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

# Use Brew stuff before defaults
export PATH="$PATH:/usr/local/bin"

# Brew Postgres?
# export PATH="/usr/local/Cellar/postgresql/9.3.5_1/bin:$PATH"

# XCode
export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin"
export PATH="$PATH:/Applications/Xcode.app"

# GHC
export PATH="$PATH:$HOME/Library/Haskell/bin"
export PATH="$PATH:$HOME/.cabal/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:/Library/Haskell/bin"

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
man() {
  env \
  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
  LESS_TERMCAP_md=$(printf "\e[1;31m") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}

export NODE_PATH="/usr/local/lib/node_modules"


#Avant Stuff
export AVANT_HOME="/Users/trevord2/Avant/avant-main/"
export LOCAL_CORE="/Users/trevord2/local_core_deploy/"
export AVANT_DB="${AVANT_HOME}avant-db/"
alias avant="cd ${AVANT_HOME}"
alias aroot="cd ${AVANT_HOME}"
alias adb="cd ${AVANT_DB}"
alias aapi="cd ${AVANT_HOME}/api-services"
alias acore="cd ${AVANT_HOME}testtaker-struts/WEB-INF/src/edu/uoregon/casls/core/"
alias aconf="cd ${AVANT_HOME}testtaker-struts/WEB-INF/configuration/"
alias afront="cd ${AVANT_HOME}frontend/"
alias aapt="cd ${AVANT_HOME}frontend/apt/"
alias asiri="cd ${AVANT_HOME}frontend/test-taker/"
alias aadv="cd ${AVANT_HOME}frontend/teacher-trainer/"
alias acore="cd ${AVANT_HOME}frontend/core/"
alias astruts="cd ${AVANT_HOME}testtaker-struts/"
alias acli="cd ${AVANT_HOME}cli/"
alias aclean="rm -r  ${AVANT_HOME}testtaker-struts/build"
alias arefresh="sudo sh ${AVANT_HOME}deploy/local/refresh-ansible_cache.sh"
alias adeploy="cd ${AVANT_HOME}deploy/"
alias buildcore="cd ${AVANT_HOME} && gradle build"
alias runcore="cd ${AVANT_HOME}deploy && ansible-playbook run_core_locally.yml -i inventory/casls_dev && taildockerlogs"
alias runcoreprod="cd ${AVANT_HOME}deploy && ansible-playbook run_core_locally.yml -i inventory/PRODUCTION_casls && taildockerlogs"
alias runsiri="cd ${AVANT_HOME}testtaker-struts/ && gradle build && cd ${AVANT_HOME}deploy && ansible-playbook run_core_locally.yml -i inventory/siri_local && taildockerlogs"
alias runsiriprod="cd ${AVANT_HOME}testtaker-struts/ && gradle build && cd ${AVANT_HOME}deploy && ansible-playbook run_core_locally.yml -i inventory/PRODUCTION_siri && taildockerlogs"
alias taildockerlogs="docker-compose -f ${LOCAL_CORE}docker-compose.yml logs -f"
alias askins="cd ${AVANT_HOME}testtaker-struts/WEB-INF/casls/skins"
alias apages="cd ${AVANT_HOME}testtaker-struts/WEB-INF/casls/pages"
alias atest="cd ${AVANT_HOME}testtaker-struts/WEB-INF/test/integration/"
alias sant="cd ~; cd /Library/Tomcat/webapps/stamp4s/WEB-INF/anttasks; ant -f"
alias sbant="alocal stamp4s; sleep 3; cd ~; cd /Library/Tomcat/webapps/stamp4s/WEB-INF/anttasks; ant -f"
alias ajsp="cp -r ${AVANT_HOME}testtaker-struts/WEB-INF/casls /Library/Tomcat/webapps/avant/WEB-INF/"
#HFF Stuff
alias hff="cd ~/HFF/hff-mobile-app/healthFirst/"
alias htest="cd ~/HFF/hff-mobile-app/healthFirst/test/"
alias hwww= "cd ~/HFF/hff-mobile-app/healthFirst/www/"
alias hhtml="cd ~/HFF/hff-mobile-app/healthFirst/www/templates"
alias hjs="cd ~/HFF/hff-mobile-app/healthFirst/www/js"
alias hcss="cd ~/HFF/hff-mobile-app/healthFirst/www/css"

# Ancient
NOW=$(date +"%Y-%m-%d-%H-%M-%S")
ANCIENT_HOME='~/Ancient'
ANCIENT_SOFTWARE="$ANCIENT_HOME/Software"
GAME_ASSETS_HOME="$ANCIENT_SOFTWARE/Game/Assets"
LOCAL_ANCIENT_BACKUP="$ANCIENT_HOME/Backup"
EXTERNAL_ANCIENT_BACKUP="/Volumes/Ancient/Backup"
ANCIENT_BACKUP_FILENAME="$LOCAL_ANCIENT_BACKUP/$NOW-Ancient.zip"

alias backup-ancient="zip -r $ANCIENT_BACKUP_FILENAME $ANCIENT_SOFTWARE -x '$ANCIENT_SOFTWARE/Game/Library/*' '$ANCIENT_SOFTWARE/Game/Executable/*' '$ANCIENT_SOFTWARE/Game/WebPlayer/*' '$ANCIENT_SOFTWARE/Game/TypeCraft_Data/*' '$ANCIENT_SOFTWARE/Game/Overworld.app/*';  echo '=== Backing up on AWS ==='; aws s3 cp --profile ancient-backup --acl private $ANCIENT_BACKUP_FILENAME s3://ancient-backup/; echo '=== copying to ancient.backup@gmail.com GDrive ==='; cp $ANCIENT_BACKUP_FILENAME ~/Google\ Drive/Ancient-Backup/;"
alias game="cd $GAME_ASSETS_HOME"
alias deadlifter="cd $ANCIENT_SOFTWARE/DeadLifter"
# jrnl
alias jl="jrnl"

# github
alias git=hub

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/trevordilley/.sdkman"
[[ -s "/Users/trevordilley/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/trevordilley/.sdkman/bin/sdkman-init.sh"

alias emax="emacsclient -t"                      # used to be "emacs -nw"
alias semac="sudo emacsclient -t"                # used to be "sudo emacs -nw"
alias emacsc="emacsclient -c -a emacs"           # new - opens the GUI with alternate non-daemon

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
