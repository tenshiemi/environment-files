# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export TERM="screen-256color"

# Path to your oh-my-zsh installation.
export ZSH="/home/emily/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set Tmux to default shell
# [[ $TERM != "screen" ]] && exec tmux

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export HISTCONTROL=ignoredups
alias d.='ls -d .* --color=auto'
alias l.='ls -ld .?* --color=auto'
alias ll='ls -l --color=auto'
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias api="gnome-terminal -x bash -c '(tail -n0 -F ~/Code/hamilcar/components/internal-api/log/*)'"
alias adapt="cd ~/Code/data-adapters/adapters/src/synthetic"
alias api="tail -n0 -F ~/Code/hamilcar/components/internal-api/log/*"
alias hamilcar="cd ~/Code/hamilcar"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias pip='pip3'
alias psg='ps -efw | grep -v grep | grep '
alias q="psql -h localhost -p 5432 -U hamadmin hamdb" 
alias rabbit="rabbitmqctl"
alias rep="cd ~/Code/hamilcar/components/workers; ./200-refresh-account-summaries.sh 2018-09-01 2018-10-01"
alias rid="/home/emily/Code/dev-tools/bin/rid"

# Aliases for converting between Proto UUID and Python UUID
alias int2uuid='perl -MUUID::Tiny -e '\''use bigint; @i=split(/,/,<>); $s=sprintf("%X%X",@i); $u=UUID_to_string(string_to_UUID($s)); print "$u\n";'\'''
alias uuid2int='perl -e '\''use bigint; $s=<>; chomp $s; $s=~tr/-//d; $a = hex substr($s,0,16); $b = hex substr($s,16,16); print "$a,$b\n";'\'''

alias run-dev="/home/emily/Code/dev-tools/bin/rid /home/emily/Code/hamilcar/001-local-runner.py --dev"
alias syn="cd ~/Code/data-adapters/adapters/src/synthetic/"
alias workers="tail -n0 -F ~/Code/hamilcar/components/workers/log/*"



export HAMILCAR_ROOT="/home/emily/Code/hamilcar"

PATH="/home/emily/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/emily/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/emily/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/emily/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/emily/perl5"; export PERL_MM_OPT;
