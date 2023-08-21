Summary of steps is as follows:
1. Download the repo


### 1. Download the repo

Let's make sure you have the ssh client running with your credentials on it. This repo has in it nested repos from both github and gitlab,
Note: Typically one only would need one public key and use it for both github and gitlab, and thus you would only need to `ssh-add` the first of these two authentications. Maybe in the future I'll fix this.

```sh
eval "$(ssh-agent -s)"
```

```sh
ssh-add ~/.ssh/github
```

```bash
ssh-add ~/.ssh/gitlab
```

Just to make sure we're all on the same page, let's install in the home directory.

``` sh
cd ~
```

``` sh
git clone -b JetID_APxV2 --single-branch --recurse-submodules ssh://git@gitlab.cern.ch:7999/cms-cactus/phase2/firmware/correlator-layer2.git
```

``` sh
cd ~/correlator-layer2/submodules/correlator-common
source /cvmfs/cms.cern.ch/cmsset_default.sh
./utils/setup_cmssw.sh -run CMSSW_12_3_0_pre4 p2l1pfp:L1PF_12_3_X lict-125x-v1.15
```

```sh
cd ~/correlator-layer2/submodules/correlator-common/jetmet/seededcone
```

Note: if you already have a `CMSSW_12_3_0_pre4` directory in `correlator-common`, you only need to run this export. You'll need to run that export either way though.

``` sh
source /data/therwig/Xilinx/Vivado/2019.2/settings64.sh
export CMSSW_VERSION=CMSSW_12_3_0_pre4
```

```sh
command="vivado_hls" 
for file in run_Jet*.tcl; do 
	$command "$file" 
done
```

```sh
cd ~/correlator-layer2/submodules/correlator-common/jetmet/jec/
```

``` sh
vivado_hls run_Synth.tcl
```

```sh
cd ~/correlator-layer2/submodules/correlator-common/jetmet/htmht
```

``` sh
command="vivado_hls" 
for file in *.tcl; do 
	$command "$file" 
done
```

``` sh
source /data/Xilinx/Vivado/2022.2/settings64.sh
```

```sh
cd ~/correlator-layer2/JetID/apx/
mkdir ../../build
make xsim
```