To use madgraph, we first gotta be in CMSSW

if on lpc, first:
```sh
source /cvmfs/cms.cern.ch/cmsset_default.sh
```

then do this in a directory with a big enough volume
```sh
cmsrel CMSSW_10_2_18
cd CMSSW_10_2_18/src
cmsenv
```
You can pick a different version but this works so far.

Then download and untar madgraph:
```sh
wget https://launchpad.net/mg5amcnlo/3.0/3.4.x/+download/MG5_aMC_v3.4.2.tar.gz
tar -xzvf MG5_aMC_v3.4.2.tar.gz
```

To run madgraph interactively:
```sh
./MG5_aMC_v3_4_2/bin/mg5_aMC
```

#### Create Process Directory

To generate events we will use the `generate` command at the MadGraph prompt:
```
generate e+ e- > a > mu+ mu- 
```

Here, we explicitly specify s-channel production through a photon. Alternatively, we can exclude production through a Z boson by using the `/` operator:
```
generate e+ e- > mu+ mu- / z
```

#### Generate Events

Finally, we can launch event generation:

```
launch newprocess
```

Interactive prompts will ask us to edit the `param_card.dat` (which controls physics parameters like particle masses, etc.) and `run_card.dat` (which controls the running conditions like the center-of-mass energy, the number of events to generate, etc.). We will edit to generate 100,000 events instead of the default of 10,000. We will also keep the default center-of-mass energy of 1 TeV.

#### Analyze Events

We will use the [`analyze_events.ipynb`](https://github.com/jmduarte/phys239/blob/main/MadGraph/analyze_events.ipynb) Jupyter notebook to analyze the events.