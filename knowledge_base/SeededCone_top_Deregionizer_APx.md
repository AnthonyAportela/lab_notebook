Summary of steps is as follows:
1. Download the repo
2. Install a specific version of CMSSW
3. Run the right `tcl` files
4. Then `make` the project

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

### 2. Install correct CMSSW

First thing is to source the `CMSSET` environment.

```sh
source /cvmfs/cms.cern.ch/cmsset_default.sh
```

Running the above command is enough for a single session, but it might be a good idea to add this to your `.bashrc` so it's automatically sourced for all sessions (you only need to do this once):

``` sh
echo "source /cvmfs/cms.cern.ch/cmsset_default.sh" >> ~/.bashrc
```

You'll need to either restart your terminal or run `source ~/.bashrc` for the changes to take effect.
And now we can install ~~`CMSSW_12_3_0_pre4`~~ `CMSSW_12_5_5_patch1`.

```sh
cd ~/correlator-layer2/submodules/correlator-common
./utils/setup_cmssw.sh -run CMSSW_12_5_5_patch1 p2l1pfp:L1PF_12_5_X lict-125x-v1.15
```

This downloads the package into the `correlator-common` directory.
Next we want to add the package to our environment

```sh
export CMSSW_VERSION=CMSSW_12_5_5_patch1
```

Once again, if we want this to persist for all login sessions, you'll have to add it to your `.bashrc` (only need to do once).

``` sh
echo "export CMSSW_VERSION=CMSSW_12_5_5_patch1" >> ~/.bashrc
```

### 3. Run the right `tcl` scripts

Unfortunately, due to an update within Xilinx and the current state of the code, different steps in this tutorial require two different source scripts. Normally this would be just one source, and hopefully they are merged in the near future. 
==**Because of this, I do not recommend that you put these in your `.bashrc` until this issue is resolved.**==

This is the first thing we have to source.

```sh
source /home/therwig/19p2_setup_vivado.sh
```

We want to make sure we're in the right directories with all the `tcl` files we want to run. The first one being:

```sh
cd ~/correlator-layer2/submodules/correlator-common/jetmet/seededcone
```

Then we're going to run all of them using the following command (copy and paste the whole thing into the terminal and press enter):

``` sh
command="vivado_hls" 
for file in run_Jet*.tcl; do 
	$command "$file" 
done
```

Then we're going to switch out of this directory and go into 

``` sh
cd ~/correlator-layer2/submodules/correlator-common/jetmet/jec
```

and run one last `tcl`:

``` sh
vivado_hls run_Synth.tcl
```

### 4. Making the project

Ok, now we can source the other environment.

```sh
source /home/therwig/setup_vitis_20222.sh 
```

Then change make the build directory and change to the right place.

``` sh
cd ~/correlator-layer2/
mkdir build
cd JetID/apx
```

Finally we make the project.

``` sh
make sources
# Vivado project will now be available at build/top
make syn
make bit
```

And then we can simulate.

``` sh
make xsim
```



