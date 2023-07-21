I will attempt to enumerate the steps required to start from scratch

1. ssh into [correlator4.](/knowledge_base/Correlator4.md)
2. set up apx firmware 
BUT WAIT, this git clone will take forever because it's gonna ask you for your password a bunch of times. 
To avoid this do the following:

* Start the SSH agent by running:
```bash
eval "$(ssh-agent -s)"
```

* add the ssh keys to the agent:
```bash
ssh-add ~/.ssh/github
```

```bash
ssh-add ~/.ssh/gitlab
```
(I just happen to use two different keys, you probably only need to use one) After you'll put in your password.

Now you can do this
```sh
git clone -b JetID_APxV2 --single-branch --recurse-submodules ssh://git@gitlab.cern.ch:7999/cms-cactus/phase2/firmware/correlator-layer2.git
mkdir build
cd JetID/apx
make
``` 

Instructions found [here](https://gitlab.cern.ch/cms-cactus/phase2/firmware/correlator-layer2/-/tree/JetID_APxV2/JetID/apx)

3. 