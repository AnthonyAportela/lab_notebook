# 1.  Mandelstam Variables (10 points).

**Consider the two-to-two scattering of massless particles (which may be the same or different), with incoming momenta $p_{1,2}^\mu$ and outgoing momenta $p_{1,2}^\mu$. Compute the Mandelstam variables in terms of the center-of-mass (CM) energies of the incoming particles, $E$, and CM scattering angle, θ:**

It useful to first define the momenta,

$$
\begin{align}
p_{1} & = E[1,\hat{p}] \\
p_{2} & = E[1,-\hat{p}] \\
p_{3} & = E[1,\hat{p}^\prime] \\
p_{4} & = E[1,-\hat{p}^\prime].
\end{align}
$$

Remember that massless particles don't have a squared momentum,

$$
p_{i}^2=0
$$

so only the cross terms remain,

$$
\begin{align}
s &= \cancel{p_{1}^2} + 2p_{1}p_{2} + \cancel{p_{2}^2}  \\
t &= \cancel{p_{1}^2} - 2p_{1}p_{3} + \cancel{p_{3}^2} \\
u &= \cancel{p_{1}^2} - 2p_{1}p_{4} + \cancel{p_{4}^2}.
\end{align}
$$

So now all together,

$$
\begin{align}
s & = 4E^2 \\
t & = -2E^2[1,\hat{p}]\cdot[1,\hat{p}^\prime] = -2E^2(1-\cos \theta) \\
u & = -2E^2[1,\hat{p}]\cdot[1,-\hat{p}^\prime] = -2E^2(1+\cos \theta)
\end{align}
$$

**Using momentum conservation show that, if the particles have masses, $p_{i}^2=m_{i}^2$, then**

$$
s+t+u=m_{1}^2+m_{2}^2+m_{3}^2+m_{4}^2.
$$

The reason $s+t+u=0$ in the first part of the problem is because of momentum conservation.

$$
\begin{align}
s+t+u & = 2p_{1}p_{2} - 2p_{1}p_{3} - 2p_{1}p_{4} \\
     & = 2p_{1}(p_{2} - p_{3} - p_{4}) \\
     & = 2p_{1}p_{1} \\
     & = 0
\end{align}
$$

What this shows us is that when added together, the cross terms will ***always*** vanish when summing the Mandelstam variables. 
Since the particles now have mass, the square terms in the Mandelstam sum no longer vanish, while the cross terms vanish no matter what.

# 2.  Parton Model DIS Kinematics (10 points).

**Consider the lab frame description of a generic DIS event: an incoming probe (massless electron, muon, or neutrino) of four-momentum $k=E_{\text{lab}}[1,0,0,1]$ incident on a proton at rest, $P=[m,0,0,0]$**, which strikes a parton of momentum $xP$ and scatters into a massless electron, muon, or neutrino with momentum


$$
k^\prime =
\begin{bmatrix}
   E_{\text{lab}}^\prime,\
   0,\
   E_{\text{lab}}^\prime\sin \theta_{\text{lab}},\
   E_{\text{lab}}^\prime\cos \theta_{\text{lab}}
\end{bmatrix}.
$$

It is conventional to define the variables $Q^2 = -q^2 = -(k-k^\prime)^2$ and $v=E_{\text{lab}}-E_{\text{lab}}^\prime$, and the partonic DIS observables

$$
\begin{align}
x & =\frac{Q^2}{2 P \cdot q} \\
y & =\frac{P \cdot q}{P \cdot k} \\
\end{align}
$$

Note that as defined the quantities x and y are Lorentz-invariant.

## a. Compute $x$ and $y$ in terms of the measured lab frame variables $E_{\text{lab}}$, $E_{\text{lab}}^\prime$ , and $\cos \theta_{\text{lab}}$.

$$
\begin{align}
P \cdot k  & = mE \\
P \cdot q  & = m(E-E^\prime) \\
Q^2 & = 2kk^\prime = 2EE^\prime(1-\cos \theta_{\text{lab}})
\end{align}
$$

$$
\begin{align}
x & = \frac{EE^\prime(1-\cos \theta_{\text{lab}})}{m(E-E^\prime)} \\
y & = \frac{(E-E^\prime)}{E}
\end{align}
$$

## b. Compute the partonic CM Mandelstam variables and scattering angle $\cos \theta$ in terms of $x$, $y$, and the lab (probe-proton) center-of-mass squared $s$ – working in the limit where $s$, $\hat{s} \gg m^2$ and you may neglect the mass of the proton. Show that both $x$ and $y$ are positive numbers between zero and one. (Note that in the lab frame, the proton rest frame, you cannot set the proton mass to zero!)

Remember for this problem that $s=4E^2$
The $\hat{s}$ variable is pretty easy

$$
\hat{s} = (k+xP)^2 = 2xkP=xs.
$$

Then, similarly for $\hat{t}$

$$
\hat{t} = -Q^2 = -2xm(E-E^\prime) = -2xys.
$$

For $\hat{u}$, we'll use the alternative definition

$$
\hat{u}=(xP-k^\prime)^2 = -xk^\prime P = -\frac{\hat{s}}{s}(mE^\prime) = -\hat{s}(1-y)
$$

Since $E>E^\prime$ and both energies are positive, it is trivial to show that $0 < y < 1$. 

To show that $0 < x < 1$, it is sufficient to show that,

$$
EE^\prime (1-\cos \theta) < m(E-E^\prime)
$$

After this I don't know what to do.



# 3. 

I ran out of time.