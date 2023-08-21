Here's the second section "Higgs boson coupling and decay":
Within the Standard Model, the coupling of the Higgs boson to fermions is
proportional to the fermion mass,

$$
\mathcal{L} \supset -m_f \left(
    1 + \frac{H}{v}
\right) \bar{\psi}_f \psi_f
$$

where $\nu=246$ GeV, and $H$ is the Higgs field. For the leptons it is then a straightforward matter to calculate the decay rates,

$$
\Gamma(H\to l^+l^-)=
\frac{\sqrt{2}G_{F}}{8\pi}
m^2_{l}m_{H}\left(
	1 - \frac{4M^2_{l}}{m^2_{H}}
\right)^{3/2}
$$

For quarks, the QCD radiative corrections produce an important effect: heavy quarks can influence light hadronic couplings through the couplings to gluons (Fig.1. Feynman diagram for $H\to GG$, in which heavy quarks may contribute. The input leg is a Higgs ($H$), which leads to a triangular heavy quark loop ($\psi_{f}$), the other two vertices of which lead to gluons ($G$)). For large quark masses this can be treated perturbatively, and is independent of the mass of the quark. At low energy, this provides a local effective Lagrangian, which is

$$
\mathcal{L}_{\text{eff}} = 
\frac{\alpha_{S}N_{h}}{12\pi v}HF_{\mu \nu}^AF^{A\mu \nu} -
\sum_{i=u,d,s} \frac{m_{i}}{\nu}H\bar{\psi}_{i}\psi_{i}
$$

where $N_h$ is the number of heavy flavours ($N_{h}=3$ for $c,t,b$) and $F_{\mu \nu}^A$ is the field strength tensor for the gluons.
The gluonic matrix elements needed can be related to those of the energy—momentum tensor in QCD. This occurs because the energy—momentum tensor has the following trace:

$$
\theta^\mu_{\mu}=
-\frac{b\alpha_{s}}{8\pi}
+\sum_{i=u,d,s}m_{i}\bar{\psi}_{i}\psi
$$

where $b = 9$ is related to the first term in the beta function for three light quarks, and again the heavy quarks have been integrated out of the theory. This allows us to write the Higgs coupling in a useful form,

$$
\mathcal{L}_{\text{eff}}=
-\frac{H}{v}\left(
\frac{2}{9}\theta_{\mu}^\mu
+\frac{7}{9}\sum_{i=u,d,s}m_{i}\bar{\psi}_{i}\psi
\right)
$$

valid for three heavy flavours.
The remaining issue is the calculation of hadronic matrix elements. Neglecting isospin breaking, the decay amplitude $H\to \pi \pi$ involves three kinematically independent form factors, viz.

$$
\begin{align}
\bra{\pi^i(p)\pi^k(p^\prime)} 
    \theta^\mu_{\mu}
\ket{0}
&\equiv \theta_{\pi}(s)\delta^{ik} \\

\bra{\pi^i(p)\pi^k(p^\prime)} 
    m_{u}\bar{u}u+m_{d}\bar{d}d
\ket{0}
&\equiv \Gamma_{\pi}(s)\delta^{ik} \\

\bra{\pi^i(p)\pi^k(p^\prime)} 
    m_{s}\bar{s}s
\ket{0}
&\equiv \Delta_{\pi}(s)\delta^{ik} \\
\end{align}
$$

where $s=(p+p^\prime)^2$. In terms of these, the transition amplitude is given by

$$
\begin{align}
\bra{\pi^i(p)\pi^k(p^\prime)} 
    \mathcal{L}_{\text{eff}}
\ket{H} 
= -\frac{1}{v}G(s)\delta^{ik} \\

G(s)=\frac{2}{9}\theta_{\pi}(s)+ \frac{7}{9} 
\left[
	\Gamma_{\pi}(s)+\Delta_{\pi}(s)
\right]
\end{align}
$$
Of more direct interest is the relative rate of the decays into $\pi \pi$ vs. $\mu^+\mu^-$.
Summing over the $\pi^+\pi^-$ and $\pi^0\pi^0$ possibilities, one finds 

$$
\frac{\Gamma(H\to \pi \pi)}{\Gamma(H\to \mu^+\mu^-)} = 
\frac{3}{4} \left(\frac{m_{H}}{m_{\mu}}\right)^2
\frac{(1-4m_{\pi}^2/m^2_{H})^{1/2}}{(1-4m_{\mu}^2/m^2_{H})^{1/2}}
\left| G\left( \frac{m^2_{H}}{m^2_{H}} \right)\right|^2
$$

For a non-standard Higgs model, the couplings can be modified by ratios of vacuum expectation values, mixing angles, etc. This, however, only changes the weight of the operators $\theta^\mu_{\mu}$, $m_{u}\bar{u}u$, etc. occurring in the effective Lagrangian. For a general interaction of the type

$$
\mathcal{L}_{\text{eff}} =
-\frac{H}{v}
\left(
K_{\theta}\theta^\mu_{\mu}+
K_{u}m_{u}\bar{u}u+
K_{d}m_{d}\bar{d}d+
K_{s}m_{s}\bar{s}s+
K_{\mu}m_{\mu}\bar{\mu}\mu+
\cdots
\right)
$$

the branching ratio is of the form given in eq. (8), with $G(s)$ of the form

$$
G(s)= \frac{1}{K_{\mu}}
\left(
K_{\theta}\theta_{\pi}(s)+\frac{K_{u}m_{u}+K_{d}m_{d}}{m_{u}+m_{d}}\Gamma_{\pi}(s)+
K_{s}\Delta_{\pi}(s)
\right)
$$


$$
w(t,\tau_{0},\tau_{1})= \frac{\frac{1}{\tau_{1}} \exp\left( -\frac{t}{\tau_{1}} \right)}{\frac{1}{\tau_{0}} \exp\left( -\frac{t}{\tau_{0}} \right)}
$$

```C
double w(double t, double tau0, double tau1) {
	double numerator = (1.0 / tau1) * exp(-t / tau1);
	double denominator = (1.0 / tau0) * exp(-t / tau0);
	return numerator / denominator; 
}
```

