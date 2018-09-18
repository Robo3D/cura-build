# @Author: matt
# @Date:   2018-09-14 18:14:05
# @Last Modified by:   Matt Pedler
# @Last Modified time: 2018-09-18 16:32:22
#!/bin/sh

ROBOCURABUILD=/root/cura-build
cd $ROBOCURABUILD

mkdir build 
cd $ROBOCURABUILD/build
#gpg --gen-key # setup a key to sign with
cmake3 .. -DArcus_DIR="/usr/local/lib/cmake/Arcus" \
          -DBUILD_PACKAGE=true \
          -DCMAKE_BUILD_TYPE=Release \
          -DCMAKE_INSTALL_PREFIX="" \
          -DCMAKE_PREFIX_PATH="/usr/local/" \
          -DCURA_VERSION_MAJOR=3 \
          -DCURA_VERSION_MINOR=4 \
          -DCURA_VERSION_PATCH=1 \
          -DSIGN_PACKAGE=false \
          -DFDMMATERIALS_BRANCH_OR_TAG="3.4" \
          -DCURABINARYDATA_BRANCH_OR_TAG="3.4.1" \
          -DCURAENGINE_BRANCH_OR_TAG="3.4" \
          -DURANIUM_BRANCH_OR_TAG="3.4.1" \
          -DCURA_BRANCH_OR_TAG="3.4" \
          -DLIBCHARON_BRANCH_OR_TAG="3.4.1" \
          -DCURA_BUILD_NAME="3.4.1"

           
make