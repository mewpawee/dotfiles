#!bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
distro=$(uname)

case $distro in
    Linux)
        source $SCRIPT_DIR/linux.sh
        ;;
    Darwin)
        source $SCRIPT_DIR/brew.sh
        ;;
    *)
        echo "Not support"
        ;;
esac
