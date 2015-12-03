# User specific aliases and functions
dir=python
export LD_LIBRARY_PATH=/local/$USER/$dir/Python-2.7.10:/local/$USER/$dir/lib:$LD_LIBRARY_PATH
export PATH=/local/$USER/python/bin:$PATH
export WORKON_HOME=/local/$USER/$dir/env
source /local/$USER/$dir/bin/virtualenvwrapper.sh

module load intel/composerxe/composer_xe_2015.3.187
export LANG=C
export PS1='\u@\h:\w\$ '
