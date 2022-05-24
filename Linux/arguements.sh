#!/bin/bash
# Quick setup script for new server.
#
# Check for an output file
if [ ! $1 ]
then
    echo "Please specify an output file."
    exit
fi

# Make sure the script is run as root.
if [ ! $UID = 0 ]
then
  echo "Please run this script as root."
  exit
fi

# Log file header
echo "Log file for general server setup script." >> $1
echo "############################" >> $1
echo "Log generated on: $(date)" >> $1
echo "############################" >> $1
echo "" >> $1

# List of packages needed on the System
packages=(
  'nano'
  'wget'
  'net-tools'
  'python'
  'tripwire'
  'tree'
  'curl'
)

# Check for installed packages. If they are not installed, install them.
for package in ${packages[@]};
do
  if [ ! $(which $package) ];
  then
    apt install -y $package
  fi
done

# Print it out and Log it
echo "$(date) Installed needed pacakges: ${packages[@]}" | tee -a $ $scripts ];
then
  mkdir $scripts.bashrc
# APATH:$scripts" >> $bashrc
echo "" >> $bashrc

# Print it out and Log it
echo "$(date) Added ~/scripts directory to sysadmin's PATH." | tee -a $1

# Add cuND
Custom Aliases
alias reload='source ~/.bashrc && echo Bash config reloaded'
alias lsa='ls -a'
alias docs=tc'
alias rc='nano ~/.bashrc'
END

# Print it out and Log it
echo "$(date) Added custom alias co log Exit
echo "$(date) Script Finished. Exiting." | tee -a $1

exit
1

# Create a sysadminradd sysadmin
chage -d 0 sysadmin

# Add sysadmin user to the `sudo` group
usermod -aG sudo sysadmin

# Print it out and Log it
echo "$(date) Created sys_admin user. Password to be created upon login" | tee -a $1

# Remove roots login shell and lock the root account.
usermod -s /sbin/nologin root
usermod ed root shell. Root user cannot login." | tee -a $1

# Change permissions on sensitive files
chmod 600 /etetc/passwd
Prinensi
# 
