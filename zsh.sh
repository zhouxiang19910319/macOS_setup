#install zsh 1st
brew install zsh zsh-completions

# Go to System Preferences
# Click on "Users & Groups"
# Click the lock to make changes.
# Right click the current user -> Advanced options
# Change the login shell to /bin/zsh in the dropdown.
# Open a new terminal and verify with echo $SHELL

#install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#force git language to english
export LC_ALL=en_US.UTF-8
