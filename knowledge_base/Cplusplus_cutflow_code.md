Download cmssw_9_4_4
```bash
source /cvmfs/cms.cern.ch/cmsset_default.sh
cmsrel CMSSW_9_4_4
```

Then go into the project dir and clone:
```bash
cd CMSSW_9_4_4/srcs
cmsenv
git clone https://github.com/ucsd-hep-ex/B-ParkingLLPs
cd /B-ParkingLLPs/analysis
mkdir roots #hotfix. Just check if there's already a root dir
```

Then make the project:
```bash
make
```
This should create a `RunAnalyzer.exe`.

Use these arguments:
```C
TString s_Sample = ParseCommandLine( argc, argv, "--Sample=" );
TString s_Path  = ParseCommandLine( argc, argv, "--Path=" );
```
This command to run on specific path and sample:
```bash
./RunAnalyzer.exe --Sample=[insert sampe] --Path=[insert path]
```
note that `[insert sample]` is just the name of the sample without the `.root` extension.
Ex:
```bash
./RunAnalyzer.exe --Path=root://cmseos.fnal.gov//store/user/ahayrape/BigNtupler/ --Sample=PhiToPi0Pi0_mPhi0p3_ctau300
```

Otherwise without the arguments it just uses whatever is hardcoded in `main.C`. This is annoying because we need to `make clean` and `make` all over again.

If we wanna use condor instead, go to the `condor` directory (should be in the same directory as `analysis`)
```bash
cd condor
```

The arguments above, you can place in `subJob.sh` then run:
```bash
bash subJob.sh
```

A useful command is `condor_q` so see the status of a job.


# To change/add histograms

There are 5 places to add the new histogram.
- Four of them in the `app/analyzer_histograms.C` file
- One in the `include/analyzer_histograms.h` file

To run plotter




Run analyzer twice
First time
* two regions, OOT reg and !OOT (test) reg
	* for both, no selection on clstEta
Second time, look for good eta cut candidate
* two regions, OOT reg, and OOT (test) 
	* one with clstEta
	* other with !clstEta

