In LPC, all you need is a container. 

```bash
mkdir MadGraph
cd MadGraph
singularity exec docker://scailfin/madgraph5-amc-nlo:latest /bin/bash
```

Then to start MadGraph, we just do:
```bash
mg5_aMC
```

If something fucks up, a good thing to try is to reinstall the container by deleting it's cache:
```bash
rm -rf ~/.apptainer
```


#### Create Process Directory

To generate events we will use the `generate` command at the MadGraph prompt:
```
generate e+ e- > a > mu+ mu- 
```

Here, we explicitly specify s-channel production through a photon. Alternatively, we can exclude production through a Z boson by using the `/` operator:
```
generate e+ e- > mu+ mu- / z
```

#### Generate Events

Finally, we can launch event generation:

```
launch newprocess
```

Interactive prompts will ask us to edit the `param_card.dat` (which controls physics parameters like particle masses, etc.) and `run_card.dat` (which controls the running conditions like the center-of-mass energy, the number of events to generate, etc.). We will edit to generate 100,000 events instead of the default of 10,000. We will also keep the default center-of-mass energy of 1 TeV.

#### Analyze Events

We will use the [`analyze_events.ipynb`](https://github.com/jmduarte/phys239/blob/main/MadGraph/analyze_events.ipynb) Jupyter notebook to analyze the events.

### Some extra stuff

If you're having trouble with `scan`ning through parameters using the `CLI`, there's no good documentation for this. This [FAQ](https://answers.launchpad.net/mg5amcnlo/+faq/2186) is the best thing out there. You just gotta do the equivalent thing in a script. I might make a python script to generate this for me.
You can script things. So if you wanna scan through multiple parameters, first make a file, then put something like the following in it

```python
generate e+ e- > e+ e-  #generate the feynman diagrams 
output aleph  #make an outgoing directory
launch aleph  #launch
	set ebeam1 30  #change the param
	set ebeam2 30
launch  #then do that however many times you wanna.
	set ebeam1 35
	set ebeam2 35
launch
	set ebeam1 40
	set ebeam2 40
launch
	set ebeam1 42.5
	set ebeam2 42.5
launch
	set ebeam1 44
	set ebeam2 44
launch
	set ebeam1 45
	set ebeam2 45
launch
	set ebeam1 45.5
	set ebeam2 45.5
launch
	set ebeam1 46
	set ebeam2 46
launch
	set ebeam1 47.5
	set ebeam2 47.5
launch
	set ebeam1 50
	set ebeam2 50
launch
	set ebeam1 55
	set ebeam2 55
launch
	set ebeam1 60
	set ebeam2 60
```

Let's say you saved it as `runner`, then you run it doing `mg5_aMC runner` and it should run as if you typed the above in the `CLI`. 

