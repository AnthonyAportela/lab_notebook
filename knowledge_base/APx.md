### APxFWSv2 Tutorial
Ok, now I have access to the more [updated version](https://gitlab.cern.ch/cms-cactus/phase2/firmware/correlator-layer2/-/tree/APxFWSv2/met/apx) of the gitlab. In order for this to work, we need to have properly set up out ssh credentials with gitlab as well as github. [Here's a tutorial](/knowledge_base/git_ssh_auth.md).

Ok, so to get started, hopefully this goes without a hitch:

To setup
```bash
git clone -b APxFWSv2 --single-branch --recurse-submodules ssh://git@gitlab.cern.ch:7999/cms-cactus/phase2/firmware/correlator-layer2.git
mkdir build
cd met/apx
```


