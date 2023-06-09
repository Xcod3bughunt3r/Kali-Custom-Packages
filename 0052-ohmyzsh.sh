#!/bin/bash
#This will install ZSH, change default shell, and load personal plugins/themes

sudo apt install -y util-linux

#install ZSH in an unattented fashion
export CHSH="yes"
export RUNZSH="no"
CHSH="yes"
RUNZSH="no"

wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O /tmp/zsh_install.sh

#modify zsh_install to not prompt to change shell....just do it
sed 's/read opt/#read opt/g' /tmp/zsh_install.sh > /tmp/mine.sh
sed 's/case \$opt in/case y in/g' /tmp/mine.sh > /tmp/zsh_install.sh
rm /tmp/mine.sh
sudo chmod +x /tmp/zsh_install.sh
sudo /tmp/./zsh_install.sh

# chsh has problems, so manual edit
check=$(grep "zsh" /etc/passwd)
if [ -z "${check}" ]; then 
  echo "Configuring /etc/passwd for /usr/bin/zsh"; 
  sed -i 's/root:x:0:0:root:\/root:\/bin\/bash/root:x:0:0:root:\/root:\/usr\/bin\/zsh/g' /etc/passwd; 
else 
  echo "already changed"; 
fi

git clone https://github.com/chrissicool/zsh-256color.git /root/.oh-my-zsh/custom/plugins/zsh-256color 2>/dev/null
git clone https://github.com/zsh-users/zsh-autosuggestions.git /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions 2>/dev/null
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting 2>/dev/null
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git /root/.oh-my-zsh/custom/plugins/you-should-use 2>/dev/null
git clone --recursive https://github.com/gko/ssh-connect.git /root/.oh-my-zsh/custom/plugins/ssh-connect 2>/dev/null

sudo mkdir -p /root/.oh-my-zsh/custom/plugins/simple-python-server

cat << EOF > /root/.oh-my-zsh/custom/plugins/simple-python-server/simple-python-server.plugin.zsh
server() {
    python -m SimpleHTTPServer \$1
}
alias serv=server
EOF

cat << EOF > /root/.zshrc
# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH:/root/.local/bin
export PATH=/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.local/bin

# Path to your oh-my-zsh installation.
export ZSH=/root/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="random"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
ZSH_THEME_RANDOM_CANDIDATES=(
 "robbyrussell"
 "amuse"
 "awesomepanda"
 "clean"
 "crunch"
 "dieter"
 "flazz"
)

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
  cp
  colored-man-pages
  encode64
  git
  simple-python-server
  urltools
  wd
  web-search
  you-should-use
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source \$ZSH/oh-my-zsh.sh
source \$ZSH_CUSTOM/plugins/ssh-connect/ssh-connect.sh

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
alias fuzzbunch='WINEPREFIX="$HOME/.wine-fuzzbunch" WINEARCH=win32 wine wineboot;export WINEPREFIX=$HOME/.wine-fuzzbunch;cd $HOME/.wine-fuzzbunch/drive_c/fuzzbunch-debian/windows && wine cmd.exe;'
alias ping_on='sysctl -w net.ipv4.icmp_echo_ignore_all=0' #will respond to ping req
alias ping_off='sysctl -w net.ipv4.icmp_echo_ignore_all=1' #will not respond to ping req, needed for icmp shells
EOF


