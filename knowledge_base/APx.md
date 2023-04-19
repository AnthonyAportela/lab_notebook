### APxFWSv2 Tutorial
Ok, now I have access to the more [updated version](https://gitlab.cern.ch/cms-cactus/phase2/firmware/correlator-layer2/-/tree/APxFWSv2/met/apx) of the gitlab. In order for this to work, we need to have properly set up out ssh credentials with gitlab as well as github. [Here's a tutorial](/knowledge_base/git_ssh_auth.md).

Ok, so to get started, hopefully this goes without a hitch:

First, make sure to do add whatever you names your ssh key pairs for github and gitlab to the ssh client.
```bash
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

TODO: there's an issue today with making. Seems that something is wrong with the python environment.
