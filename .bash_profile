# Setting PATH for Python 2.7
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export PATH

# added by Anaconda3 4.2.0 installer
export PATH="/Users/alfordsimon/Desktop/anaconda/bin:$PATH"

# added by Anaconda3 4.2.0 installer
export PATH="//anaconda/bin:$PATH"

# added by Simon for Java for apache?
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/jre/bin:$PATH

# added by Simon for Apache Maven
export PATH=/Users/alfordsimon/Documents/apache-maven-3.5.0/bin:$PATH

# Setting PATH for Python 3.6
# export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

# to get correct vim to run
export PATH=/usr/local/bin:$PATH

alias ll="ssh salford@txe1-login.mit.edu"
alias om='ssh -Y salford@openmind7.mit.edu'
alias ls='ls -Gp' # G colorizes output, p puts a / after directories
alias tb='ssh -L 16006:127.0.0.1:6006 salford@txe1-login.mit.edu'
alias polestar='ssh -Y salford@polestar.mit.edu'
alias cap='conda activate pytorch'
alias delswaps='find . -type f -name ".*.sw[klmnop]" -delete'
alias athena='ssh -Y salford@athena.dialup.mit.edu'
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

function mvt() {
    mv $1 ~/trash/
}

# for compiling latex from vim
latte () {
    let a=${#1}-3
    s=${1:0:a}pdf
    echo $s
    pdflatex $1 && open -a "Preview" $s
}
. //anaconda/etc/profile.d/conda.sh # not sure why this is here
stty -ixon # so that ctrl-S can be used in vim
# to use vim things in command prompt
set -o vi

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# added for sketch 2020 6.s084
export PATH="$PATH:/Users/alfordsimon/Applications/sketch-1.7.6/sketch-frontend/"
export SKETCH_HOME="/Users/alfordsimon/Applications/sketch-1.7.6/sketch-frontend/runtime"

alias python=/usr/local/bin/python3.7
