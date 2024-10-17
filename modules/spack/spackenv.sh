version=$1
PROJECT=$2
USER=$3

# Set the spack root path
SPACK_ROOT=/home/565/dm5220/spack_module/apps/spack/$version
# # System python has a bug when accessing lustre. Need to use a version of python that 
# # works, so insist on a known good version
export SPACK_PYTHON=/apps/python3/3.11.0/bin/python3
# # Set spack system config path
export SPACK_SYSTEM_CONFIG_PATH=/home/565/dm5220/spack_module/spack-config/v0.22/gadi
# # Set spack user cache path
if [ -d /scratch ]; then
    export SPACK_USER_CACHE_PATH=/g/data/$PROJECT/$USER/local_spack/spack_user_cache
fi

source $SPACK_ROOT/share/spack/setup-env.sh
/bin/env