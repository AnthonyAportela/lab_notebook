# Parton showers & hadronization

## Length/time Scales
* 3 TeV e+e− → qq event is generated with Pythia8
* Event is clustered with with the e+e− generalized-kT algorithm with p = 0.5 in FastJet (gives a clustering sequence that is ordered in time)
* Clustering sequence is sampled at different times to represent particles as traces.
* Initial particles are yellow traces, intermediate particles are shown in blue, final particles (mostly hadrons) are in red. Brighter lines have higher energy.

Animation found [here](https://gsalam.web.cern.ch/gsalam/panscales/videos.html). Extremely neat.

## Energy scales

![](img/energy_scales.jpeg)

## Schematic of a $pp \to t \bar{t}$ event

![](img/33380999-5809-4073-8CAE-2E287F75A96C.jpeg)

* Hard scattering process 
* Final/initial-state radiation Multiparton interactions (MPI) — not “pileup (distinct pp collisions) Hadronization
* Strings
* Color reconnections
* Hadrons

## QCD shower: evolution

* Start with $q\bar{q}$ state
* Throw a random number to determine down to what scale state persists unchanged

$$
\frac{dP_{2}(v)}{dv}=-f_{2\to 3}^{q\bar{q}}(v)P_{2}(v)
$$
![](img/98D875B5-4CF6-4A4A-B5F9-911BFD96C880.jpeg)

* At some point, state splits (2 → 3, i.e. emits gluon). Evolution equation changes.

$$
\frac{dP_{3}(v)}{dv}=-[f_{2\to 3}^{qg}(v) + f_{2\to 3}^{g\bar{q}}(v)]P_{3}(v)
$$

* Gluon is part of two dipoles, ($qg$) and ($q\bar{g}$), each is treated as independent
	* Known as the "leading color" or $N_{c}\to \infty$

![](img/1AB9D970-F2AA-442A-B742-17803A51353B.jpeg)

Self-similar evolution until it reaches a non-perturbative scale

![](img/0477A64C-B207-41D0-8FA2-FE4985D7C176.jpeg)

## Shower Architectures

![](img/E2B875A4-1A70-45EE-8769-EED32CD213E0.jpeg)

![](img/20BAB9D3-8ED4-4531-B0C8-8EEE0FFB1446.jpeg)

## Lund String Model

### Coulomb Potential

 Basic assumption: linear confinement potential between a color charge and its anticharge can be approximated by a color flux tube, or string, stretched form one to the other
 
![](img/69792503-8B29-4754-B346-254B515888CC.jpeg)

## Lund String Model

### Hadronization
* If a string connects a receding quark and antiquark pair, initial kinetic energy converted to potential energy as the string is stretched out
* Stored energy can produce new quark– antiquark pairs that break the string by screening the endpoint colors
* Leads to a sequence of mesons

![](img/95004E95-D3C4-4B46-B234-6429527758C4.jpeg)

* Beaks occur with (wide) fluctuations around a hyperbola of constant invariant time
* Since breaks are causally disconnected, the fragmentation process can be considered in any order
* At each step, fraction of remaining lightcone momentum is removed from the string and transferred to the hadron according to a probabilistic fragmentation function

$$
f(z)\propto \frac{1}{z} (1-z)^a \exp{\left( - \frac{b(m_{h}^2 +p_{T}h^2)}{z} \right)}
$$

![](img/B516EC16-DA9A-4978-A948-5D7A6F330ED0.jpeg)

## Color Reconnections

![](img/499349B3-EE5E-4641-8110-268BD2C58B66.jpeg)

## Fixed-order vs showers

![](img/A5AC1CB8-CD86-41C1-B0EC-7A408A71AC61.jpeg)

##   How not to do it

![](img/C7810403-7A09-4C5D-9E3B-96CCF3D9C872.jpeg)

## Matching/Merging/Slicing

MLM merging: the final. jets after parton-shower evolution and jet clustering are matched to the original partons
* Event is accepted if a reasonable match is found
* Reject step approximately introduces a Sudakov form factor on the hard processes
* Paton shower should not generate an emmision that double counts hard activity already included in the matrix-element description.

![](img/5EFB4045-1F8A-486C-939B-78BED9D980C8.jpeg)

[pythia tutorial](/knowledge_base/pythia_8p3.md)
