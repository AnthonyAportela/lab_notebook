To install

```sh
wget http://hepmc.web.cern.ch/hepmc/releases/hepmc2.06.11.tgz
tar -xf hepmc2.06.11.tgz
cd HepMC-2.06.11
mkdir build
cd build
cmake -Dmomentum=GEV -Dlength=CM -DCMAKE_INSTALL_PREFIX=$(pwd)/.. ..
make
make install
```

```sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/users/aaportel/hepmc/lib
```

Might be easier in some cases to install from conda

```sh
conda install -c conda-forge hepmc2
```



```sh
mamba create -n mc --no-default-packages -y
mamba activate mc
mamba install -c anaconda cmake -y

top="/eos/user/a/aaportel"

cd $top

wget http://hepmc.web.cern.ch/hepmc/releases/hepmc2.06.09.tgz
tar -xf hepmc2.06.09.tgz
mkdir hepmc
cd hepmc
cmake -Dmomentum=GEV -Dlength=CM -DCMAKE_INSTALL_PREFIX=$top/hepmc $top/hepmc2.06.09
make -j16
make install

export HEPMC_DIR=$top/hepmc/

cd $top

wget https://pythia.org/download/pythia83/pythia8303.tgz
tar -xf pythia8303.tgz
cd pythia8303
./configure --with-hepmc2=$top/hepmc
make -j16
make install

export HEPMC_DIR=$top/hepmc/
export PYTHIA8PATH=$top/pythia8303
export PYTHIA8DATA=$PYTHIA8PATH/share/Pythia8/xmldoc
export LD_LIBRARY_PATH=$PYTHIA8PATH/lib


```


```sh
mamba deactivate
mamba env remove -n mc
rm -rf HepMC-2.06.11  hepmc2.06.11.tgz pythia8309  pythia8309.tgz
```

```sh
num_cores = "16"
top="$HOME"
bdecay_dir="$HOME/backup$"
mamba activate mc
cd $top
wget http://hepmc.web.cern.ch/hepmc/releases/hepmc2.06.09.tgz
tar -xf hepmc2.06.09.tgz
mkdir hepmc
cd hepmc
cmake -Dmomentum=GEV -Dlength=CM -DCMAKE_INSTALL_PREFIX=$top/hepmc $top/hepmc2.06.09
make -j$num_cores
make install
cd $top
wget https://pythia.org/download/pythia83/pythia8302.tgz
tar -xf pythia8302.tgz
cd pythia8302
./configure --with-hepmc2=$top/hepmc
make -j$num_cores
make install
export HEPMC_DIR=$top/hepmc
export PYTHIA8PATH=$top/pythia8302
export PYTHIA8DATA=$PYTHIA8PATH/share/Pythia8/xmldoc
export LD_LIBRARY_PATH=$PYTHIA8PATH/lib
cd $bdecay_dir
git clone https://github.com/AnthonyAportela/BDecayLLP
cd BDecayLLP
mkdir build
cd build
cmake ..
make -j$num_cores
```


```sh
export HEPMC_DIR=/home/users/aaportel/madgraph/HEPTools/hepmc
export PYTHIA8PATH=/home/users/aaportel/madgraph/HEPTools/pythia8 
export PYTHIA8DATA=$PYTHIA8PATH/share/Pythia8/xmldoc
export LD_LIBRARY_PATH=$PYTHIA8PATH/lib

export PATH=$PYTHIA8PATH/bin:$PATH
```


```sh
mamba create -n mc --no-default-packages -y
mamba activate mc
mamba install -c anaconda cmake -y
mamba install python=3.7 -y
mamba install six -y

top="/eos/user/a/aaportel"

wget https://launchpad.net/mg5amcnlo/3.0/3.5.x/+download/MG5_aMC_v3.5.0.tar.gz
tar -xf MG5_aMC_v3.5.0
mv MG5_aMC_v3.5.0.tar.gz madgraph

./madgraph/bin/mg5_aMC
```

```sh
install hepmc
install pythia8 -y
```

```sh
export HEPMC_DIR=$top/madgraph/HEPTools/hepmc
export PYTHIA8PATH=$top/madgraph/HEPTools/pythia8 
export PYTHIA8DATA=$PYTHIA8PATH/share/Pythia8/xmldoc
export LD_LIBRARY_PATH=$PYTHIA8PATH/lib
export PATH=$PYTHIA8PATH/bin:$PATH

```
