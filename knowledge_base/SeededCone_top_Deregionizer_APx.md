The summary of steps is as follows:
1. Setup the APx firmware. Making is not necessary. 
2. Install the right CMSSW package.
3. Run the `tcl` files.

### 1. Setup APx firmware

You can find instructions on how to do that [here](/knowledge_base/APx.md).
**It is only required to get to the step right before building.**
==Otherwise, it could take forever.==

### 2. Install CMSSW

Now we want to set up the right CMSSW environment, which is included in the submodules of the `correlator-layer2` repo.

Assuming `correlator-layer2` is in the home directory, let's make sure we're in the right place

```sh
cd ~
```

Otherwise, just remember to replace `~` with wherever you end up cloning the repo.

On `correlator2` you need to source the cmssw scram framework from `cvmfs`

```sh
source /cvmfs/cms.cern.ch/cmsset_default.sh
```

Then we get the package, making sure it's in the `correlator-common` directory. 
Not sure if specific location is necessary.

```sh
cd ~/correlator-layer2/submodules/correlator-common
./utils/setup_cmssw.sh -run CMSSW_12_3_0_pre4 p2l1pfp:L1PF_12_3_X lict-125x-v1.15
```

This downloads the package into the `correlator-common` directory.
Next we want to add the package to our environment

```sh
export CMSSW_VERSION=CMSSW_12_3_0_pre4
```

Then we want to make sure either `vitis` or `vivado` is properly sourced if one of them isn't already

```sh
# source /home/therwig/setup_vitis_20222.sh
source /home/therwig/19p2_setup_vivado.sh
```

So the deal is that `vivado` is now no longer supported, so at the time of these notes, the repos are being upgraded to work with `vitis`. 
However, we are not up to the point where everything is updated, so for running some of the `tcl` we're going to use `vivado` if they don't work with `vitis`.

### 3. Running the `tcl` files

With the package downloaded, every time we log in, we need to `export` the `CMSSW_VERSION` and `source` the `setup_vitis_20222.sh` (replace with `vivado` setup if needed).
This is probably worth putting in your `~/.bashrc` script.

```sh
source /cvmfs/cms.cern.ch/cmsset_default.sh
# source /home/therwig/setup_vitis_20222.sh 
source /home/therwig/19p2_setup_vivado.sh
export CMSSW_VERSION=CMSSW_12_3_0_pre4
```

Then we want to make sure we're still in the right directory with all the `tcl` files we want to run

```sh
cd ~/correlator-layer2/submodules/correlator-common/jetmet/seededcone
```

We should see a few different files, with the operating `tcl`s being

```sh
vivado_hls run_JetCompute.tcl
vivado_hls run_JetFormat.tcl
vivado_hls run_JetLoop.tcl
vivado_hls run_Sim.tcl
```

However, we may or may not want to `run_Sim` depending on whether we decide to test.
Then to run the wanted `tcl`s, we can do one of the following two

```sh
vivado_hls run_Jet* 
# vivado_hls *.tcl #if you also want to test

### or one of these two if we end up using vitis
# vitis_hls run_Jet*
# vitis_hls *.tcl #if you also want to test
```


