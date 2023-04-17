[Prev](/FPGA_deployment/Mon_Apr_10_2023.md)

Ok, so I figured out the problem with cloning from [this git](https://gitlab.cern.ch/GTT/APx/-/tree/pass_through_360). It turns out for whatever reason it doesn't like being cloned via ssh, but it's ok with being cloned via https. Maybe this is because I did something wrong with the ssh. Who know or cares because I got it running. 

The commands are as follows:
```
git clone https://gitlab.cern.ch/GTT/APx/-/tree/pass_through_360
```
I'll then be asked for my cern credentials
```
User: aaportel
Pass: [I should know what this is]
```

But it turns out that that git is outdated and runs on an old version of the firmware shell that isn't supported anymore.

I need to use [this git](https://gitlab.cern.ch/cms-cactus/phase2/firmware/correlator-layer2/-/tree/APxFWSv2/met/apx), but need access to it first. I've already send an email to [Tom Williams](mailto:tom.williams@cern.ch), who is apparently in charge of giving access to this repo.

To save headache, I feel like I should just wait until I have access