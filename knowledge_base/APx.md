### APxFWSv2 Tutorial
Ok, now I have access to the more [updated version](https://gitlab.cern.ch/cms-cactus/phase2/firmware/correlator-layer2/-/tree/APxFWSv2/met/apx) of the gitlab. 

Some prerequisites:
1. ssh authentication set up for both gitlab and github. [Tutorial](/knowledge_base/git_ssh_auth.md)
2. sourcing the vivado setup:

To set up vivado on [corr4](/knowledge_base/Correlator4.md), you need to source the following:
```sh
source /home/therwig/setup_vitis_20222.sh
```

I personally copied the file to my directory in case it changes in the future so that it still works with this version of the git.

#### Ok, so to get started, hopefully this goes without a hitch:

First, make sure to do add whatever you names your ssh key pairs for github and gitlab to the ssh client.
```sh
eval "$(ssh-agent -s)"
```

```sh
ssh-add ~/.ssh/github
```

```bash
ssh-add ~/.ssh/gitlab
```

Otherwise, cloning this repo will ask you to put in your password a million times.

To setup
```bash
git clone -b APxFWSv2 --single-branch --recurse-submodules ssh://git@gitlab.cern.ch:7999/cms-cactus/phase2/firmware/correlator-layer2.git
```
NOTE: if the tutorial fails at this step, it's probably something wrong with the git authentication prerequisite step.

Then go into the cloned directory and get ready to build:
```bash
cd correlator-layer2
mkdir build
cd met/apx
```

Then build:
```bash
make
```
NOTE: if the tutorial fails at this step, it's probably because we didn't source the `setup_vitis_20222.sh` script. If it still doesn't work, maybe there's an environment mismatch.

This might take a few minutes to run. In fact it's seeming to take at least an hour....
Can confirm it took an hour.

Then once that's done, do:
```sh
make sim
```
This will also take a while.

What do these two `make` steps do? According to Christian Herwig:

> The short answer is that both build the firmware sources, then `make xsim` runs the behavioral simulation while `make` performs all the steps to get a bitfile, including logic synthesis and place+route.





