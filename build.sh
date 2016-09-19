apt update && apt upgrade
apt install python python-dev pip
pip install --upgrade pip
pip install conda
## All the following packages are needed by conda
pip install auxlib ruamel.yaml requests

## Install pycosat (this can be ignored if https://github.com/ContinuumIO/pycosat/pull/29 is fixed)
wget https://pypi.python.org/packages/76/0f/16edae7bc75b79376f2c260b7a459829785f08e463ecf74a8ccdef62dd4a/pycosat-0.6.1.tar.gz#md5=c1fc35b17865f5f992595ae0362f9f9f
tar -xf pycosat-0.6.1.tar.gz
# edit pycosat-0.6.1/picosat.c
# change "#include <sys/unistd.h>" to "#include <unistd.h>"
tar -czvf pycosat-0.6.1.tar.gz tar -xf pycosat-0.6.1.tar.gz

pip install --no-index --find-links file://path/to/tar -xf pycosat-0.6.1.tar.gz
