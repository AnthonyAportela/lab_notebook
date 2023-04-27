# 1. MadGraph Bhabha scattering $e^+e^- \to e^+e^-$ (20 points).
The differential cross section for Bhabha scattering in QED in the high-energy limit can be written in terms of the Mandelstam variables $s = (p_1 + p_2)^2$, $t = (p_1-p_3)^2$, and $u = (p_1-p_4)^2$,

$$
\frac{d\sigma}{d\Omega} = \frac{\pi \alpha^2}{s}\left [ u^2\left (\frac{1}{s} + \frac{1}{t}\right)^2 +  \left(\frac{t}{s}\right)^2 +  \left(\frac{s}{t}\right)^2 \right ]~.
$$

Note that if we ignore the electron mass, $s + t + u = 0$. 

## a. (5 points) 
Rewrite this formula in terms of $s$ and $\cos\theta$.

We ought to know that at high energies, 

$$
\begin{align}
t &= (p_{1}-p_{1}^\prime)^2 \\
&\approx -2 p_{1} \cdot p_{1}^\prime \\
&= -2 | p_{1}| | p_{1}^\prime| (1-\cos{\theta})
\end{align}
$$




## b. (5 points) 
What feature of the diagrams causes the differential cross section to diverge as $\theta\to 0$? 


Why didn't we see this for $e^+e^-\to \mu^+\mu^-$?


## c. (10 points) 

Generate 10,000 events using MadGraph (excluding the $Z$ boson exchange diagram) at $\sqrt{s}=1$\,TeV. 

Plot the resulting distribution as a function of $\cos\theta$ and compare to the theoretical expectation.

What difference(s) do you observe?