# User specific aliases and functions
dir=python
if [ ! -a /local/$USER/$dir/bin/python ]; then
    echo "Python has not been installed on this machine"
fi
export LD_LIBRARY_PATH=/local/$USER/$dir/lib:$LD_LIBRARY_PATH
export PATH=/local/$USER/python/bin:$PATH
export WORKON_HOME=/local/$USER/$dir/env
if [ -f /local/$USER/$dir/bin/virtualenvwrapper.sh ]; then
    source /local/$USER/$dir/bin/virtualenvwrapper.sh
else
    echo "virtualenv is not installed"
fi

if [ "${HOSTNAME##dps}" -gt "99" ]; then
    module load intel/composerxe/composer_xe_2015.3.187
    export LANG=C
    export PS1='\u@\h:\w\$ '
fi
