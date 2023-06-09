To install, first download

```sh
wget https://pythia.org/download/pythia83/pythia8309.tgz
tar -xf pythia8309.tgz
cd pythia8309
```

then include any interfaces. 
For example:

```sh
./configure --with-hepmc2=/path/to/hepmc2-installation
```

Note: I think we need to have whatever other packages preinstalled before adding interfaces.

then make and install

```sh
make
make install
```

then either run these commands any time you wanna use something with pythia, or add them to your .bashrc and restart the session.

```sh
export PYTHIA8PATH=/home/users/aaportel/pythia8309
export PYTHIA8DATA=$PYTHIA8PATH/share/Pythia8/xmldoc
export LD_LIBRARY_PATH=$PYTHIA8PATH/lib
```




```sh
wget https://pythia.org/download/pythia83/pythia8309.tgz
tar -xf pythia8309.tgz
cd pythia8309
./configure --with-hepmc2=$(pwd)/../HepMC-2.06.11
make
make install
```