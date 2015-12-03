# User specific aliases and functions
user=$USER
dir=python
export LD_LIBRARY_PATH=/local/$user/$dir/Python-2.7.10:/local/$user/$dir/lib:$LD_LIBRARY_PATH
export PATH=/local/$USER/python/bin:$PATH
export WORKON_HOME=/local/townsend/python/env
source /local/townsend/python/bin/virtualenvwrapper.sh

module load intel/composerxe/composer_xe_2015.3.187
export LANG=C
export PS1='\u@\h:\w\$ '
