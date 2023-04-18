### APxFWSv2 Tutorial
Ok, now I have access to the more [updated version](https://gitlab.cern.ch/cms-cactus/phase2/firmware/correlator-layer2/-/tree/APxFWSv2/met/apx) of the gitlab. In order for this to work, we need to have properly set up out ssh credentials with gitlab. [Here's a tutorial](/knowledge_base/Adding_ssh_key_for_secure_access_to_gitlab.md).

Ok, so to get started, hopefully this goes without a hitch:

To setup
```bash
git clone -b APxFWSv2 --single-branch --recurse-submodules ssh://git@gitlab.cern.ch:7999/cms-cactus/phase2/firmware/correlator-layer2.git
mkdir build
cd met/apx
```

If you have your ssh added to your credentials, this shouldn't be too bad, otherwise you'll have to put in your pass a million times.

TODO; I have run into an issue where I don't have access to all the submodules. The process is already in motion to get me access. I will continue the tutorial after that.

