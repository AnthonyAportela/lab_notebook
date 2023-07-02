## Introduction:

- Aim of the book is to describe interactions of nature on elementary particles at atomic nucleus distances
- Four distinct fundamental interactions known: gravity, electromagnetism, strong interaction, and weak interaction
- Gravity and electromagnetism are macroscopic forces known since ancient times
- Discovery of radioactivity in 1896 indicated the existence of additional interactions
- Rutherford's discovery of the atomic nucleus raised questions about atomic structure and the counterbalancing attractive force
- Protons and neutrons were found to be composite particles, leading to the discovery of hundreds of particles interacting through the nuclear force
- The electron and three other particles with electric charge but no strong interactions were also observed
- New interactions were sorted into the strong and weak interactions, forming the basis of the Standard Model of particle physics
- The Standard Model is not the complete story, and the nature of fundamental forces is still not fully understood
- The book is organized into three parts: Part I introduces the basic materials, Part II focuses on the strong interaction, and Part III explores the weak interaction
- Part I covers the laws of quantum mechanics and special relativity, matter particles (leptons and quarks), and the carriers of forces (photon, gluon, W, Z, and Higgs bosons)
- Understanding experiments on elementary particles and measurable quantities is also discussed in Part I
- Part II discusses important experiments on the strong interaction, including electron scattering and electron-positron annihilation
- It explores the nature of hadron-hadron collisions at high energy and the masses of quarks
- Part III presents the description of the weak interaction, starting from the concept of the current-current interaction and including the study of W, Z, and Higgs bosons, as well as neutrinos
- The book focuses on the simplest applications of the Standard Model at high energies
- Quantum field theory is essential for a complete understanding of elementary particles, but is not extensively covered in this book
- References and recommended resources for further study are provided, including the Review of Particle Physics compiled by the Particle Data Group.

## Symmetries of Space-Time

- Laws of nature should be consistent with well-established symmetries and invariance principles
- On small distance scales, space-time is invariant under translations of space and time, rotations, and boosts (special relativity symmetries)
- Experiments on elementary particles test principles such as energy-momentum conservation, rotational invariance, constancy of the speed of light, and the special-relativity relation of mass, momentum, and energy
- Applying these constraints to proposals for elementary particle interactions is reasonable due to the absence of discrepancies so far
- Physics in the early 20th century led to abandoning Newtonian space-time and classical mechanics in favor of Einstein's and Minkowski's space-time and quantum mechanics
- Choosing relativity and quantum mechanics as absolute principles for the subnuclear world is a conservative approach
- More radical approaches to formulating laws of elementary particles have been suggested, such as the bootstrap and string theory
- However, successful routes to the theory of subnuclear interactions have relied on translation invariance, special relativity, and standard quantum mechanics
- The assumption in this book is that special relativity and quantum mechanics are correct in the realm of elementary particle interactions
- Spacetime symmetries should be formulated in a way that allows for easy application without relying on the actual transformation laws
- Questions should be formulated to yield expressions that are invariant under spacetime symmetries
- The goal is to identify a small set of possible invariants that are consistent with experiment, ideally finding a single consistent expression

Apologies for the confusion. Here's the revised response with the bullet points and LaTeX-formatted equations:

### Relativistic Kinematics

- Energy and momentum of an isolated particle are unified into a 4-vector in special relativity.
- Energy-momentum 4-vector notation: 

$$
p^\mu = (E, \mathbf{p}c)^\mu
$$

* Lorentz transformations under boosts:

$$
\begin{align*}
E' &= \frac{1}{\sqrt{1-v^2/c^2}}(E + vcp_3/c) \\
p'_3c &= \frac{1}{\sqrt{1-v^2/c^2}}(p_3c + v cE) \\
p_{1,2}c &= p_{1,2}c
\end{align*}
$$

* The boost transformation can be written as a matrix transformation:

$$
p' = \Lambda p \quad \text{with} \quad \Lambda = \begin{pmatrix} 
\gamma & 0 & 0 & \gamma\beta \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
\gamma\beta & 0 & 0 & \gamma
\end{pmatrix}
$$

* The Lorentz invariant Minkowski space vector product is given by:

$$ 
p \cdot q = E_p E_q - \mathbf{p} \cdot \mathbf{q} 
$$

* The metric tensor is preserved under Lorentz transformations:

$$ 
\eta^{\mu\nu} = \begin{pmatrix} 
1 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 0 & 0 & -1
\end{pmatrix} \quad \text{and} \quad \eta_{\mu\nu} = \begin{pmatrix} 
1 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 0 & 0 & -1
\end{pmatrix} 
$$

* The invariant product can be written as: 

$$
p \cdot q = p^\mu \eta_{\mu\nu} q^\nu
$$

* The square of a Lorentz vector (p^2) is an important Lorentz invariant:

$$
p^2 = E^2 - (\mathbf{p}c)^2 
$$

* The rest frame energy ($mc^2$) is defined as the mass of a particle in its rest frame:

$$
(mc^2) \equiv E_0
$$

* The mass-shell constraint is given by:

$$
(mc^2)^2 = p^2 = E^2 - (\mathbf{p}c)^2 
$$

Particle momenta can be written in two standard ways:

$$
p^\mu = (E, \mathbf{p}c)^\mu \quad \text{or} \quad p^\mu = mc^2\gamma(1, \beta)^\m
$$

Where:
$$
\begin{align*}
E_p &= c\sqrt{\mathbf{p}^2 + (mc)^2} \\
\beta &= \frac{|\mathbf{p}|}{c} \\
\gamma &= \frac{1}{\sqrt{1-\beta^2}}
\end{align*}
$$

These kinematic formulae will be used extensively in this book.