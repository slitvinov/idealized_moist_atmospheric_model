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
mkdir -p /home/lisergey/idealized_moist_atmospheric_model/exp/exec.gcc
cd /home/lisergey/idealized_moist_atmospheric_model/exp/exec.gcc
/home/lisergey/idealized_moist_atmospheric_model/exp/../bin/mkmf -a /home/lisergey/idealized_moist_atmospheric_model/exp/../src -t /home/lisergey/idealized_moist_atmospheric_model/exp/../bin/mkmf.template.gcc -p idealized_moist.x -c "-Duse_libMPI -Duse_netCDF -Duse_LARGEFILE -DINTERNAL_FILE_NML -DOVERLOAD_C8" /home/lisergey/idealized_moist_atmospheric_model/exp/../input/path_names /home/lisergey/idealized_moist_atmospheric_model/exp/../src/shared/include /home/lisergey/idealized_moist_atmospheric_model/exp/../src/shared/mpp/include
make all
