# 1. MadGraph Bhabha scattering $e^+e^- \to e^+e^-$ (20 points).
The differential cross section for Bhabha scattering in QED in the high-energy limit can be written in terms of the Mandelstam variables $s = (p_1 + p_2)^2$, $t = (p_1-p_3)^2$, and $u = (p_1-p_4)^2$,

$$
\frac{d\sigma}{d\Omega} = \frac{\pi \alpha^2}{s}\left [ u^2\left (\frac{1}{s} + \frac{1}{t}\right)^2 +  \left(\frac{t}{s}\right)^2 +  \left(\frac{s}{t}\right)^2 \right ]~.
$$

Note that if we ignore the electron mass, $s + t + u = 0$. 

## a. (5 points) 
**Rewrite this formula in terms of $s$ and $\cos\theta$.**

We ought to know that at high energies, 

$$
\begin{align}
t &= (p_{1}-p_{1}^\prime)^2 \\
&\approx -2 p_{1} \cdot p_{1}^\prime \\
&= -2 | \vec{p_{1}}| | \vec{p_{1}}^\prime| (1-\cos{\theta})
\end{align}
$$

Since we're in the center of mass frame we can reasonably define

$$
\vec{p_{1}} = E [1, 0, 0, 1] \to |\vec{p_{1}}|=E.
$$

And since we're doing $e^+e^- \to e^+e^-$, we can also assume $|\vec{p_{1}}|=|\vec{p_{1}}^\prime|=E$. We also ought to know that $s\approx4E^2$ at high energy. Altogether this gets us

$$
t = -\frac{s}{2}(1-\cos{\theta}).
$$

Jamming this stuff into $s+t+u=0$ we get an expression for $u$:

$$
u=-\frac{s}{2}(1+\cos \theta).
$$

One thoroughly jammed, we can move onto plugging into the differential cross-section, which according to Mathematica turns out to be,

$$
\frac{d\sigma}{d\Omega} = \frac{\pi  \alpha ^2 (\cos (2 \theta )+7)^2}{8 s (\cos (\theta )-1)^2}.
$$


## b. (5 points) 
**What feature of the diagrams causes the differential cross section to diverge as $\theta\to 0$?** 

As $\theta \to 0$, $t \to 0$, and so the momentum transfer approaches zero.

**Why didn't we see this for $e^+e^-\to \mu^+\mu^-$?**

My guess is that the momentum transfer does not approach zero in this case.

## c. (10 points) 

Generate 10,000 events using MadGraph (excluding the $Z$ boson exchange diagram) at $\sqrt{s}=1$TeV. 
Plot the resulting distribution as a function of $\cos\theta$ and compare to the theoretical expectation.

![](img/eeee_scattering.png){ width=50% }


What difference(s) do you observe?