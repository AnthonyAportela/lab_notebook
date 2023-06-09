

# 1. Hadronization: Rapidity plateau (20 points).

**When quarks and gluons fragment into jets, the soft particles created during the fragmentation process are produced in colored flux tubes. This means they have limited transverse momentum with respect to the *jet axis* and that they are produced uniformly in longitudinal phase space. A consequence of this is that production is uniform in rapidity**

$$
y = \frac{1}{2}\ln\left(
    \frac{
        E+p_{||}
        }{
        E-p_{||}
    } 
\right)~,
$$

**where $p_{||}$ is the particle's momentum with respect to the jet axis.**

## a.

**Show that a particle’s rapidity is related to its velocity along the jet axis $\beta_{||}$ by the expression**

$$
y = \tanh^{-1}(\beta_{||})~.
$$

We know first off that $E=\gamma m$ and $p_{||}=\gamma \beta_{||} m$.
After subbing in and cancelling line terms, we get

$$
y = \frac{1}{2}\ln\left(
    \frac{
        1 + \beta_{||}
        }{
        1 - \beta_{||}
    } 
\right) = \tanh^{-1}(\beta_{||})~.
$$

## b.

**Show that the rapidity difference between two particles in a jet is invariant with respect to Lorentz boosts along the jet direction.**

The boost factor always cancels in the logarithm, so there will never be a dependance of boost on the rapidity.

## c.

**Show that in the limit where particle masses can be neglected the rapidity y can be approximated by the expression**

$$
y \approx - \ln(\tan(\theta/2)),
$$

**where $\theta$ is the angle the particle makes with respect to the jet axis.**

If massless, then $E=p$.
Keeping the following trig identity in mind

$$
\frac{\cos \theta - 1 }{\cos \theta + 1} = \tan^2(\theta/2),
$$

then,

$$
\begin{align}
y  & = \frac{1}{2}\ln\left(
    \frac{
        p + p_{||}
        }{
        p - p_{||}
    } 
\right) \\
& = \frac{1}{2}\ln\left(
    \frac{
        1 + \cos \theta
        }{
        1 - \cos \theta
    } 
\right) \\
& = -\ln\left(
    \tan(\theta/2) 
\right)~.
\end{align}
$$

## d. 

**Consider $e^+e^- \to$ hadrons in the center-of-mass frame where the energies of the initial $e^+$ and $e^−$ beams are $E_{beam} = E_{CM}/2$.
The distribution of particles will be approximately uniform in $y$ between a minimum value $y_{min}$ and a maximum value $y_{max}$ where $y_{min} = - y_{max}$.
Using the definition of rapidity above, find an approximate value for $y_{max}$ for hadrons of species $h$ and mass $m_{h}$ as a function of $E_{beam}$.**

$$
y = \frac{1}{2}\ln\left(
    \frac{
        1 + \cos \theta
        }{
        1 - \cos \theta
    } 
\right)
$$

$$
y = \frac{1}{2}\ln\left(
    \frac{
        E+p_{||}
        }{
        E-p_{||}
    } 
\right)
$$

I think I'm confused on how to find $p_{||}$, but I'm pretty sure it'll end up being something to do with the ratio between $E_{CM}$ and $m_{h}$.

## e.

**Using this result, show that the average multiplicity of final state hadrons $h$ of mass $m_{h}$ is**

$$
n_{h}\propto \log\left( \frac{E_{CM}}{m_{h}} \right)~.
$$

**In other words, the multiplicity of hadrons grows logarithmically with the center-of-mass energy.**

In order to solve this, I would need to have done the last problem.

# 2. Hadronization: Fragmentation functions (20 points).

**The fragmentation function $D_{q}^h(z)$ is defined as the probability that a quark $q$ will hadronize to produce a hadron of species $h$ with energy fraction between $z$ and $z + dz$. These fragmentation functions must satisfy conservation of momentum and unitarity so that**

$$
\begin{align}
\sum_{h}\int_{0}^1 z D_{q}^h(z)~dz  & = 1 \\
\sum_{h}\int_{z_{min}}^1 D_{q}^h(z)~dz  & = \sum_{h}n_{h}
\end{align}
$$

**where the sum is over all hadron species, $z_{min} = m_{h}/E_{q}$ with $m_{h}$ the hadron mass and $E_{q}$ the quark energy, and $n_{h}$ is the average number of hadrons of type $h$ produced by the fragmentation of the quark.**

**Fragmentation functions are often parameterized as**

$$
D_{q}^h(z)=\mathcal{N}\frac{(1-z)^\alpha}{z}
$$

**where $\alpha$ and $\mathcal{N}$ are constants.**

## a. 

**Show that**

$$
\mathcal{N}=(\alpha+1)\braket{z} 
$$

**where $\braket{z}$ is the average fraction of the quark momentum carried by hadrons of type h after fragmentation.**

Just plugging into unitarity

$$
\begin{align}
\sum_{h}\int_{0}^1 \mathcal{N}(1-z)^\alpha ~dz  & = 1 \\
\frac{1}{\braket{z}}\frac{\mathcal{N}}{\alpha+1} & = 1 \\
\mathcal{N} & = (\alpha+1)\braket{z} 
\end{align}
$$

## b.

**Show that this formalism reproduces the previous result**

$$
n_{h}\propto \log\left( \frac{E_{CM}}{m_{h}} \right)~.
$$

**for the process $e^+e^- \to 2$ jets.**

This will involved momentum conservation.

# 3. Hadronization in $e^+e^- \to$ hadrons with `PYTHIA8.3` (30 points).

## a.

Generate 10,000 events in `PYTHIA8.3` $e^+e^- \to$ hadrons events on the Z pole.
Hint: In Python, this should look like the following

This is the script I tried but kept getting errors for:

```python
import pythia8

# Set up Pythia instance
pythia = pythia8.Pythia()

# Configure Pythia to generate e+e- to hadrons
pythia.readString("PDF:lepton = off")
pythia.readString("WeakSingleBoson:ffbar2gmZ = on")
pythia.readString("23:onMode = off")
pythia.readString("23:onIfAny = 1 2 3 4 5")
pythia.readString("Beams:idA =  11")
pythia.readString("Beams:idB = -11")

mZ = pythia.particleData.m0(23)
pythia.settings.parm("Beams:eCM", mZ)

# Initialize Pythia
pythia.init()

# Number of events to generate
nEvents = 10000

# Event loop
for iEvent in range(nEvents):
    # Generate event
    pythia.next()

pythia.stat("Beams:idA")
pythia.stat("Beams:idB")
pythia.stat("Beams:eCM")
pythia.stat("23:onIfAny")
pythia.stat("ParticleData:initialize")

pythia.stat()
```
