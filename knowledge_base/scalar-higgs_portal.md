### Theory References

1. [The Decay of a Light Higgs Boson](/knowledge_base/scalar-higgs_portal_theory_ref/the_decay_of_a_light_higgs_boson.pdf)
2. [Light inflaton Hunter’s Guide](/knowledge_base/scalar-higgs_portal_theory_ref/light_inflaton_hunters_guide.pdf)
3. [BBN for the LHC: constraints on lifetimes of the Higgs portal scalars](/knowledge_base/scalar-higgs_portal_theory_ref/bbn_for_the_lhc_constraints_on_lifetimes_of_the_higgs_portal_scalars.pdf)
4. [Decay and detection of a light scalar boson mixing with the Higgs boson](/knowledge_base/scalar-higgs_portal_theory_ref/decay_and_detection_of_a_light_scalar_boson_mixing_with_the_higgs_boson.pdf)
5. [Uncertainties of hadronic scalar decay calculations](/knowledge_base/scalar-higgs_portal_theory_ref/uncertainties_of_hadronic_scalar_decay_calculations.pdf)
6. [Decays $K^\pm \to \pi^\pm l^+ l^-$ and limits on the mass of the neutral Higgs boson](/knowledge_base/scalar-higgs_portal_theory_ref/decays_k_to_pi_l_l_and_limits_on_the_mass_of_the_neutral_higgs_boson.pdf)
7. [Limits on a light Higgs boson](/knowledge_base/scalar-higgs_portal_theory_ref/limits_on_a_light_higgs_boson.pdf)
8. [Do B meson decays exclude a light Higgs?](/knowledge_base/scalar-higgs_portal_theory_ref/do_b_meson_decays_exclude_a_light_higgs.pdf)
9. [Multi-lepton Signatures of a Hidden Sector in Rare B Decays](/knowledge_base/scalar-higgs_portal_theory_ref/multi-lepton_signatures_of_a_hidden_sector_in_rare_b_decays.pdf)
10. [Flavor-specific scalar mediators](/knowledge_base/scalar-higgs_portal_theory_ref/flavor-specific_scalar_mediators.pdf)
11. [Probing Light Dark Matter with a Hadrophilic Scalar Mediator](/knowledge_base/scalar-higgs_portal_theory_ref/probing_light_dark_matter_with_a_hadrophilic_scalar_mediator.pdf)
12. [Baryogenesis and Dark Matter from B Mesons](/knowledge_base/scalar-higgs_portal_theory_ref/baryogenesis_and_dark_matter_from_b_mesons.pdf)
13. [Baryogenesis from B Meson Oscillations](/knowledge_base/scalar-higgs_portal_theory_ref/baryogenesis_from_b_meson_oscillations.pdf)

The most minimal extension of the standard model consists of adding a single real scalar field, $S$.
Gauge invariance restricts the Lagrangian to

$$
\mathcal{L} \supset \left(
	\alpha \hat{S} +
	\beta \hat{S}^2 +
	\cdots
\right)\hat{H}^{\dagger}\hat{H}
$$

where the $\cdots$ denote higher dimensional operators, assumed to be suppressed.
The parameter $\alpha$ can be exchanged for the mixing angle, $\sin\theta$, of the $S$ with the physical Higgs boson eigenstate.
In the mass eigenbasis, the new light scalar therefore inherits all the couplings of the SM model Higgs: Mass hierarchical couplings with all the SM fermions, as well couplings to photons and gluons at one loop.
All such couplings are suppressed by the small parameter $\sin\theta$. 
The couplings induced by Higgs mixing are responsible not only for the decay of $S$, but also contribute to its production cross-section.
**See references 1-5**

#### Let's work it out explicitly

The Lagrangian provided is a simplified model where a new scalar field S interacts with the Higgs doublet H. The specific interaction terms are $(\alpha S + \beta S^2) H^\dagger H$. 

The Higgs doublet H can be written in terms of the physical Higgs field h and the vacuum expectation value v as H = (0, (h + v)/sqrt{2}). Substituting this into the interaction terms gives:

$$
(\alpha S + \beta S^2) H^\dagger H = (\alpha S + \beta S^2) (h + v)^2/2.
$$

Expanding this out and keeping only the terms that involve the physical fields h and S gives:

$$
(\alpha S + \beta S^2) (h + v)^2/2 = \alpha v S h + \beta v S^2 h + \text{other terms}.
$$

The terms $\alpha v S h$ and $\beta v S^2 h$ represent the mixing between the scalar field S and the Higgs field h. 

The mass matrix for the fields h and S is given by the second derivative of the potential V with respect to the fields:

$$
M^2 = \begin{pmatrix}
\frac{\partial^2 V}{\partial h^2} & \frac{\partial^2 V}{\partial h \partial S} \\
\frac{\partial^2 V}{\partial S \partial h} & \frac{\partial^2 V}{\partial S^2}
\end{pmatrix}.
$$

The off-diagonal elements of the mass matrix, which represent the mixing between h and S, are given by the coefficients of the terms $\alpha v S h$ and $\beta v S^2 h$:

$$
M_{hS} = M_{Sh} = \alpha v + 2 \beta v S.
$$

The mixing angle θ is then given by the formula

$$
\tan(2\theta) = \frac{2 (\alpha v + 2 \beta v h)}{M_{hh} - M_{SS}},
$$

where $M_{hh}$ and $M_{SS}$ are the diagonal elements of the mass matrix (the "bare" masses of the Higgs and the scalar field S).

#### Now let's calculate this angle

Let's assume that the scalar S mixes with the Higgs boson H and can decay into anything the Higgs boson does. The mixing angle θ is a parameter that quantifies the degree of mixing between the scalar field S and the Higgs field H. 

The decay rate of the scalar S into a particular final state f (which could be a pair of fermions, a pair of gauge bosons, etc.) is given by

$$\Gamma(S \to f) = \sin^2(\theta) \Gamma(H \to f),$$

where $\Gamma(H \to f)$ is the decay rate of the Higgs boson into the same final state, and $\sin^2(\theta)$ comes from the mixing between the scalar S and the Higgs H. 

The total decay rate of the scalar S is the sum of the decay rates for all possible final states:

$$\Gamma(S) = \sum_f \Gamma(S \to f) = \sin^2(\theta) \sum_f \Gamma(H \to f) = \sin^2(\theta) \Gamma(H),$$

where $\Gamma(H)$ is the total decay rate of the Higgs boson.

The lifetime τ of a particle is the inverse of its total decay rate: 

$$\tau(S) = \frac{1}{\Gamma(S)} = \frac{1}{\sin^2(\theta) \Gamma(H)}.$$

Therefore, if you know the lifetime of the scalar S and the total decay rate of the Higgs boson, you can solve for the mixing angle:

$$\sin^2(\theta) = \frac{1}{\tau(S) \Gamma(H)}.$$

To get the mixing angle θ, you take the square root:

$$\theta = \arcsin\left(\sqrt{\frac{1}{\tau(S) \Gamma(H)}}\right).$$

#### Putting it all together

Let's put together the calculation of the mixing angle from the parameters α and β with the calculation of the decay rate from the lifetime of the scalar S.

1. **Mixing Angle**: From the interaction terms $(\alpha S + \beta S^2) H^\dagger H$ in the Lagrangian, we found that the mixing angle θ is given by

$$
\tan(2\theta) = \frac{2 (\alpha v + 2 \beta v h)}{M_{hh} - M_{SS}}.
$$

2. **Decay Rate**: From the lifetime τ of the scalar S, we found that the total decay rate Γ is given by

$$
\Gamma = \frac{1}{\tau}.
$$

The decay rate of the scalar S into a particular final state f (which could be a pair of fermions, a pair of gauge bosons, etc.) is given by

$$
\Gamma(S \to f) = \sin^2(\theta) \Gamma(H \to f),
$$

where $\Gamma(H \to f)$ is the decay rate of the Higgs boson into the same final state.

The total decay rate of the scalar S is the sum of the decay rates for all possible final states:

$$
\Gamma(S) = \sum_f \Gamma(S \to f) = \sin^2(\theta) \sum_f \Gamma(H \to f) = \sin^2(\theta) \Gamma(H).
$$

Therefore, we have

$$
\sin^2(\theta) = \frac{\Gamma(S)}{\Gamma(H)} = \frac{1}{\tau \Gamma(H)}.
$$

3. **System of Equations**: Combining these two equations gives a system of equations for the parameters α and β:

$$
\begin{align*}
\tan(2\theta) &= \frac{2 (\alpha v + 2 \beta v h)}{M_{hh} - M_{SS}}, \\
\sin^2(\theta) &= \frac{1}{\tau \Gamma(H)}.
\end{align*}
$$

The upshot here is that we can determine a mass and lifetime (decay length) from $M_{SS}$ and $\tau$ respectively, or vice versa. 
In my case, since I'm using the B-parking dataset, the upper bound for $M_{SS}$ is determined by the masses of the production B-mesons and decay Kaons.

![](/knowledge_base/img/Pasted%20image%2020230722092633.png)

The lower bound is determined by the mass of the decay products. 
Because of the mixing, S can decay into anything H decays into, which for us is determined by the part of the detector the S decays into. 
If decaying into the muon system, then showers made by pions are the easiest to detect (I am told this is true but I do not understand why).
The muon system lies approximately between 4 and 11 meters from the interaction point.

Searching in the muon system enforces the following constraints:

$$
\begin{align}
	.3\text{ GeV} \lesssim  M_{SS} \lesssim 5\text{ GeV} \\
	10\text{ cm} \lesssim \tau \lesssim 10^3\text{ cm}
\end{align}
$$