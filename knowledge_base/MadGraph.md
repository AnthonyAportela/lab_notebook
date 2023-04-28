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