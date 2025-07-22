# Idealized Moist Spectral Atmospheric Model

https://www.gfdl.noaa.gov/idealized-moist-spectral-atmospheric-model-quickstart

# Build

```
# sudo apt install libnetcdf-dev -y
$ nc-config --version
netCDF 4.9.3
```

```
$ cd postprocessing
$ c99 mppnccombine.c -O2 `nc-config --libs --cflags` -o mppnccombine.x
```

```
$ ./configure
$ make
```
