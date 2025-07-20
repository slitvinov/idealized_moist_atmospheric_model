#!/bin/sh
set -eu

platform=gcc
template=../bin/mkmf.template.$platform
mkmf=../bin/mkmf
sourcedir=../src
pathnames=../input/path_names
ppdir=../postprocessing
execdir=exec.$platform
executable=$execdir/idealized_moist.x
mkdir -p $execdir
cd $execdir
../../bin/mkmf -a ../src -t ../bin/mkmf.template.gcc -p exec.gcc/idealized_moist.x -c -Duse_libMPI -Duse_netCDF -Duse_LARGEFILE -DINTERNAL_FILE_NML -DOVERLOAD_C8 ../input/path_names ../src/shared/include ../src/shared/mpp/include
make $executable
