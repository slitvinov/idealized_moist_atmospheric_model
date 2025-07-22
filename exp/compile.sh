#!/bin/sh
set -eu

platform=gcc
p=`pwd`
../bin/mkmf -a $p/../src -t $p/../bin/mkmf.template.gcc -p idealized_moist.x \
    -c "-Duse_libMPI -Duse_netCDF -Duse_LARGEFILE -DINTERNAL_FILE_NML -DOVERLOAD_C8" \
    $p/../input/path_names $p/../src/shared/include $p/../src/shared/mpp/include
make all
