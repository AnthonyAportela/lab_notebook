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