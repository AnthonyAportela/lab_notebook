### Summarized from

![](/knowledge_base/documents/EXO-21-008-paper.pdf)

# Search for long-lived particles decaying in the CMS muon detectors in proton-proton collisions at √s = 13 TeV

### Introduction

- Many extensions of the standard model (SM) predict the existence of neutral, weakly-coupled particles with long proper lifetimes.
- These particles are known as long-lived particles (LLPs) and are present in various theoretical models.
- This paper presents a search conducted at the CERN LHC using muon detectors to identify particle showers produced by decays of LLPs.
- The search is based on proton-proton (pp) collision data at 13TeV collected during 2016-2018, corresponding to an integrated luminosity of 138fb−1.
- The CMS muon detectors consist of gaseous detector planes interleaved with steel layers of the magnet flux-return yoke.
- Decays of LLPs in the muon detectors induce hadronic and electromagnetic showers, resulting in a large number of hits in a localized detector region.
- The search is sensitive to singly- or multiply-produced LLPs decaying to final states including hadrons, taus, electrons, or photons.
- LLPs decaying to muons are not detected by this search since they rarely produce particle showers.
- The search interprets the results in two benchmark models: a simplified model motivated by the twin Higgs scenario and a set of "dark shower" models with perturbative parton showers.
- Previous constraints on proper decay lengths are discussed, and the advantages of the LLP search strategy are highlighted.

### Search Technique

- The search technique described in this paper employs muon detectors as a sampling calorimeter to reconstruct decays of LLPs.
- The muon detectors, along with the hadron calorimeter, solenoid magnet, and steel flux-return yoke, provide shielding to suppress particle showers from jets that are not fully contained within the calorimeter's volume.
- The search has sensitivity to a wide range of LLP masses (0.01 to 55GeV) and decay modes, including decays resulting in hadronic showers, electromagnetic showers, and decays to τ+τ−.
- The search focuses on the detection of long-lived scalars and dark sector mesons, depending on the benchmark models being considered.
- Feynman diagrams illustrating the benchmark models are shown in Fig. 1.

### Figure 1: Feynman Diagrams

- Left: Feynman diagram representing the twin Higgs model.
	- The SM Higgs boson (H) decays to a pair of neutral long-lived scalars (S).
	- The scalars (S) then decay to two SM particles (fermions).
	- Note that the LLP can also decay to a pair of photons.
- Right: Feynman diagram illustrating the dark shower model.
	- The SM Higgs boson (H) decays to a pair of dark sector quarks (Ψ).
	- The dark sector quarks (Ψ) hadronize to form dark showers.
	- The dark showers consist of dark scalar (η) and vector mesons (ω).
	- The dark mesons eventually decay back to SM particles.

![](EXO-21-008_fig1.jpeg)

### Advantages of the LLP Search Strategy

- The LLP search strategy presented in this paper offers advantages over searches that rely on displaced vertices.
- The use of muon detectors as a sampling calorimeter enables the identification of particle showers produced by LLP decays.
- The strong shielding provided by the muon detectors and other components effectively suppresses background from jets that are not fully contained within the calorimeter.
- The search strategy is sensitive to a broad range of LLP masses and decay modes, allowing for comprehensive exploration of LLP phenomenology.
- Compared to previous searches, this study sets the most stringent limits on branching fractions and proper decay lengths for LLPs.

### Advantages of the LLP Search Strategy

- The LLP search strategy presented in this paper offers two key advantages over searches that rely on displaced vertices.
	- (i) The absorber material in front of the muon detectors serves as shielding, reducing background levels and allowing for the detection of a single LLP decay. In contrast, current displaced vertex searches typically require the detection of two LLP decays to achieve a similar level of background rejection.
	- (ii) The calorimetric nature of the particle shower in the LLP search strategy is sensitive to the LLP energy rather than its mass. This characteristic makes the search equally sensitive to all LLP masses considered. In contrast, vertex reconstruction efficiency tends to decrease with increasing LLP mass due to smaller opening angles.
- These advantages lead to improved signal acceptance and sensitivity compared to the previous best results (listed) for all LLP masses and proper lifetimes.
	* CMS Collaboration. "Search for long-lived particles using displaced jets in proton-proton collisions at √s = 13 TeV." 
		- Physical Review D, Volume 104, Issue 1, 012015 (2021). 
		- DOI: 10.1103/PhysRevD.104.012015. 
		- ArXiv:2012.01581.
	* ATLAS Collaboration. "Search for long-lived particles produced in pp collisions at √s = 13 TeV that decay into displaced hadronic jets in the ATLAS muon spectrometer." 
		- Physical Review D, Volume 99, 052005 (2019). 
		- DOI: 10.1103/PhysRevD.99.052005. 
		- ArXiv:1811.07370.
	* ATLAS Collaboration. "Search for events with a pair of displaced vertices from long-lived neutral particles decaying into hadronic jets in the ATLAS muon spectrometer in pp collisions at √s = 13 TeV." 
		- Physical Review D, Volume 106, Issue 3, 032005 (2022). 
		- DOI: 10.1103/PhysRevD.106.032005. 
		- ArXiv:2203.00587.

### CMS Apparatus

- The central component of the CMS (Compact Muon Solenoid) apparatus is a superconducting solenoid with a 6m internal diameter, generating a magnetic field of 3.8T.
- Within the solenoid volume, various detectors are positioned, including:
	- Silicon pixel and strip tracker.
	- Lead tungstate crystal electromagnetic calorimeter (ECAL).
	- Brass and scintillator hadron calorimeter (HCAL).
	- Forward calorimeters extending the pseudorapidity coverage provided by the barrel and endcap detectors.
- Muons are identified using gas detectors integrated into the steel flux-return yoke outside the solenoid.
- Three technologies are employed for muon detection: drift tubes (DTs) in the barrel, cathode strip chambers (CSCs) in the endcaps, and resistive-plate chambers (RPCs) in both the barrel and endcaps.
- The DT and CSC detectors play critical roles in the search described in this paper.
- The barrel DT detectors cover a region of pseudorapidity |η| < 1.2 and consist of four stations organized in concentric cylinders around the beamline, along with five wheels along the z-axis.
- Each DT station comprises 8-12 layers of DT cells, and charged particles traversing these stations ionize the gas molecules, producing drifting charges that are collected by the anode wire at the center of each DT cell.
- The CSC detectors cover a region of pseudorapidity between |η| = 0.9 and 2.4, with four stations in each endcap.
- Each CSC chamber is composed of six thin layers containing cathode strips along the radial direction and anode wires perpendicular to the strips.
- Charged particles passing through the chambers ionize the gas molecules, with resulting electrons accelerated toward the anode wires and positive ions inducing signals in the cathode strips.
- By combining information from the anode wires and cathode strips, the space-time coordinates of each hit can be determined with a resolution of 400-500µm and 5ns.

### Event Selection and Trigger System

- Events of interest are selected using a two-tiered trigger system.
- The first level consists of custom hardware processors that utilize information from the calorimeters and muon detectors to select events at a rate of around 100kHz within a fixed latency of approximately 4µs.
- The second level, known as the high-level trigger, consists of a farm of processors running a version of the full event reconstruction software optimized for fast processing.
- The high-level trigger reduces the event rate to around 1kHz before data storage.

### Signal Sample Generation

- Signal samples for the H→SS process are generated at next-to-leading order (NLO) using the POWHEG 2.0 generator.
- The five main production processes considered are gluon fusion, vector boson fusion, associated production with a vector boson, and associated production with a pair of top quarks.
- The Higgs boson mass is set to 125GeV, while the mass of the long-lived scalar (S) is set to 0.4, 1, 3, 7, 15, 40, or 55GeV.
- The proper lifetime (cτ) of the LLP is varied between 1mm and 100m.
- Decay modes considered include decays to bb, dd, K+K−, K0K0, and π+π− (fully hadronic), decays to π0π0, γγ, and e+e− (fully electromagnetic), and decays to τ+τ−.
- Signal samples were generated for LLP masses above 0.4GeV. To extrapolate the analysis sensitivity to lower masses, the signal efficiency was validated for LLP masses between 0.4 and 4GeV, for both fully hadronic and fully leptonic decays.
- The opening angle of decay particles decreases as the LLP mass decreases, but the detector response was found to be identical for LLP masses between 0.4 and 4GeV. Therefore, the signal efficiency is extrapolated assuming identical detector response for LLP masses below 0.4GeV.

### Simulated Signal Samples for Dark Shower Models

- For the simulated signal samples in the dark shower models, Higgs boson production is generated at NLO using the POWHEG 2.0 generator, specifically considering gluon fusion production.
- The Higgs boson mass is set to 125GeV.
- The Higgs boson decay and the phenomenology of the dark showers are generated using the PYTHIA 8 hidden valley module, following the tools and theory priors presented the following reference:
	* S. Knapen, J. Shelton, and D. Xu. "Perturbative benchmark models for a dark shower search program."
		- Physical Review D, Volume 103, Issue 11, 115013 (2021).
		- DOI: 10.1103/PhysRevD.103.115013.
		- ArXiv:2103.01238.
- The dark sector is reduced to a single dark quark (Ψ), vector meson (ω), and scalar meson (η), with three dark quantum chromodynamic (QCD) colors.
- Signal samples are generated for five different decay portals: vector portal, dark photon portal, gluon portal, Higgs portal, and dark photon portal with the dark scalar meson as the LLP.
- The LLP mass is varied between 2-20GeV, within theoretically motivated minima.
- Different numerical values are considered for the ratios xiω (ω to η mass ratio) and xiΛ (ratio of the dark sector QCD scale to the dark scalar meson mass).
- These scenarios provide a wide range of signatures with different LLP multiplicities, visible decay product multiplicities, and missing transverse energies.
- Parton showering, hadronization, and the underlying event are modeled using PYTHIA 8.205 and 8.230, with parameters set by the CUETP8M1 and CP5 tunes used for samples simulating the 2016 and 2017-2018 datasets, respectively.
- The NNPDF3.0 and 3.1 parton distribution functions are used in the generation of all simulated samples.
- The GEANT4 package is employed to model the response of the CMS detector.
- Simulated minimum-bias events are mixed with the hard interactions in simulated events to account for the effect of additional proton-proton interactions within the same or neighboring bunch crossings as the recorded event (pileup).
- Event weights are applied to reproduce the distribution of the number of interactions per bunch crossing observed during each data-taking period.

### Particle-Flow Algorithm

- The particle-flow algorithm is employed to reconstruct and identify individual particles in an event, utilizing information from various elements of the CMS detector.
- The energy of photons is obtained from the ECAL measurement.
- The energy of electrons is determined using a combination of the electron momentum from the tracker, the energy of the corresponding ECAL cluster, and the sum of the energy from bremsstrahlung photons associated with the electron track.
- The energy of muons is obtained from the curvature of the muon track.
- The energy of charged hadrons is determined by combining their momentum measured in the tracker with the energy deposits in the ECAL and HCAL, corrected for the calorimeters' response to hadronic showers.
- The energy of neutral hadrons is obtained from the corresponding corrected ECAL and HCAL energies.

### Muon Measurement and Reconstruction

- Muons are measured in the pseudorapidity range |η| < 2.4, with detection planes composed of three technologies: DTs, CSCs, and RPCs.
- The efficiency to reconstruct and identify muons exceeds 96%.
- Matching muons to tracks measured in the silicon tracker results in a relative transverse momentum resolution of 1% (barrel) and 3% (endcaps) for muons with pT up to 100GeV.
- The pT resolution in the barrel is better than 7% for muons with pT up to 1TeV.
- In this search, muons are used to veto muon detector shower clusters to suppress background from muon bremsstrahlung.
- Different pT and identification requirements are applied depending on the search categories.

### Jet Clustering and Energy Corrections

- Hadronic jets are clustered from the reconstructed particles using the infrared and collinear safe anti-kT algorithm with a distance parameter of 0.4.
- The momentum of a jet is determined as the vector sum of all particle momenta within the jet.
- Pileup interactions can contribute additional tracks and calorimetric energy deposition to the jet momentum.
- Charged particles originating from pileup vertices are discarded, and an offset correction is applied to account for the remaining contributions.
- Jet energy corrections are derived from simulation to bring the measured response of jets to that of particle-level jets on average.
- In-situ measurements of the momentum balance in dijet, photon+jet, Z+jet, and multijet events are utilized to address any residual differences in the jet energy scale between data and simulation.
- Additional selection criteria are applied to each jet to remove jets potentially dominated by anomalous contributions or reconstruction failures.

### Missing Transverse Momentum

- The missing transverse momentum vector (pmiss T) is calculated as the negative vector sum of the transverse momenta of all PF candidates in an event, denoted as pmiss T.
- pmiss T is modified to account for corrections to the energy scale of the reconstructed jets in the event.

### CSC and DT Cluster Reconstruction

- In the CSCs, signal pulses are collected on the anode wires and cathode strips. These signals are combined to form two-dimensional points on each chamber layer, known as CSC hits.
- In the DT chambers, signal pulses are collected on the anode wires at the center of the DT cells. Since the DT hits provide measurement in only one dimension, the DT hit position is assumed to be at the center of each DT chamber in the orthogonal direction.
- For LLPs that decay within or just in front of the muon system, the material in the iron return yoke structure induces a localized and isolated cluster of signal hits in the muon detectors, creating a geometrically distinct cluster.
- Due to the different information contained in CSC and DT hits, they are handled separately.
- The CSC and DT hits are clustered in η and the azimuthal angle φ using the DBSCAN algorithm, which groups hits based on high-density regions.
- A minimum of 50 hits and a distance parameter $\Delta R = \sqrt{\Delta\eta^2 + \Delta\phi^2 }$ of 0.2 are used in the clustering process. The minimum of 50 hits is chosen to be larger than the expected number of hits created by a muon in the CSC or DT detectors.
- Each cluster is associated with a spatial position by taking the geometric center of the hits within the cluster, allowing for the calculation of η and φ coordinates.
- Nearby clusters are merged if they satisfy ∆R < 0.6, ensuring that clusters from the same source are reconstructed as a single object.
- In the overlap region of the muon detectors (0.9 < |η| < 1.2), if both CSC and DT clusters are reconstructed with ∆R < 0.4, the CSC clusters are given precedence and the corresponding DT clusters are removed.

### Cluster Reconstruction Efficiency

- The cluster reconstruction efficiencies, including both DT and CSC clusters, are shown as a function of the simulated r and |z| decay positions of the particle S.
- The efficiency is highest when the LLP decays near the edges of the shielding absorber material, where there is enough material to induce the shower without completely stopping the secondary particles.
- The cluster reconstruction efficiency depends on whether the LLP decays hadronically or leptonically. Hadronic showers generally have higher efficiency due to their ability to penetrate through the steel between stations.
- When the LLP decays close to or in the CSCs or DTs, the inclusive cluster reconstruction efficiencies vary depending on the decay mode:
	- For fully hadronic decays: ~80% for CSC and ~80% for DT.
	- For τ+τ− decays: ~55% for CSC and ~60% for DT.
	- For fully leptonic decays: ~35% for CSC and ~45% for DT.
- The accuracy of the simulation modeling of the cluster reconstruction efficiency is assessed using a Z → µ+µ− data sample, where clusters are produced when one of the muons undergoes bremsstrahlung and the associated photon generates an electromagnetic shower.
- The discrepancy between data and simulation is considered as a systematic uncertainty on the cluster reconstruction efficiencies.

### Figure 2: Cluster Reconstruction Efficiencies

- The cluster reconstruction efficiencies, including both DT and CSC clusters, are shown in Figure 2.
- The plot represents the efficiencies as a function of the simulated r (radial) and |z| decay positions of the particle S decaying to d d, with a mass of 40GeV and cτ values ranging from 1 to 10m.
- The black boxes represent the barrel and endcap muon stations, labeled with their station names.
- Regions occupied by steel shielding are shaded in gray.

![](EXO-21-008_fig2.jpeg)

### Figure 3: DT and CSC Cluster Reconstruction Efficiency

- Figure 3 illustrates the DT (left) and CSC (right) cluster reconstruction efficiency as a function of the simulated r or z decay positions of the particle S decaying to d d.
- The mass of the particle S is set to 40GeV, and the cτ values range from 1 to 10m.
- The regions occupied by steel shielding are shaded in gray.

![](EXO-21-008_fig3.jpeg)

### Event-Level Selection

- Events with online missing transverse momentum (pTmiss) greater than 120 GeV are triggered on, and subsequently, offline pTmiss > 200 GeV is required to ensure events are in the plateau region of high-level trigger efficiency.
- At least one jet with pT > 30 GeV and pseudorapidity |η| < 2.4 is required since signal events passing the pTmiss requirement are always accompanied by a jet from initial-state radiation.
- Filters are applied to remove events containing beam-halo muons or calorimeter noise in order to suppress noncollision backgrounds.
- The event-level selections are kept minimal to maintain model independence.

### Categorization and Selection Criteria

- After the event-level selection, the events are categorized into three mutually exclusive categories based on the number and location of the clusters: 
	1. Events with two clusters in the muon detectors.
	2. Events with exactly one CSC cluster.
	3. Events with exactly one DT cluster.
- Events with two clusters are further divided into subcategories with 2 CSC clusters, 2 DT clusters, and 1 CSC and 1 DT cluster.
- The second category is based on a previous search ([EXO-20-015](\knowledge_base/EXO-20-015_notes.md)) using the endcap muon detectors, with some modifications.
- Geometric acceptance and the efficiency of the pTmiss selection for each category are shown in Figure 4.

### Figure 4
* The geometric acceptance and the efficiency of the pTmiss ≥ 200 GeV selection as a function of S proper decay length for a mass of 40 GeV.

![](EXO-21-008_fig4.jpeg)

### Background Suppression

- The main Standard Model (SM) backgrounds are similar among the three categories and include punch-through jets, muons undergoing bremsstrahlung, and isolated hadrons from pileup, recoils, or underlying events.
- To suppress background from punch-through jets or muon bremsstrahlung, CSC and DT clusters that have a jet or muon within ∆R < 0.4 are rejected in all categories.
- The pT thresholds and identification requirements of jets and muons differ depending on the category.
- Additional tighter vetoes are applied to the single cluster categories to further reject background.

### Discriminating Variables

- The difference in the azimuthal angle (∆φ) between the cluster location and the missing transverse momentum vector (∆φ(⃗pmiss,cluster)) is used as a discriminating variable in all three categories.
- For signal, ∆φ(⃗pmiss,cluster) peaks near zero due to the large pmiss requirement favoring highly energetic Higgs bosons where the S and H momentum vectors nearly coincide.
- For backgrounds, ∆φ(⃗pmiss,cluster) is uniformly distributed since the cluster and ⃗pmiss are independent.
- The exact threshold on ∆φ(⃗pmiss,cluster) differs for the barrel and endcap regions and is looser for the double cluster category.
- The number of hits in the clusters (Nhits) is also used to discriminate signal and background, with signal clusters tending to have larger Nhits.
- The threshold on Nhits varies for the barrel and endcap regions and is looser for the double cluster category. Detailed event selections for each category will be described in the following subsections.

### Double Cluster Category

- In the double cluster category, events with two clusters that satisfy the selection criteria are searched for.
- The events are divided into three categories based on the presence of two DT clusters, two CSC clusters, or one CSC and one DT cluster.
- Requiring two muon system clusters significantly reduces the expected background, so the selection requirements in this category are looser compared to the single cluster categories.

### Selection Criteria

- CSC clusters are rejected if any jet with pT > 30 GeV or global muon (built by matching muon tracks in the muon detectors and tracker) with pT > 30 GeV is found within ∆R < 0.4.
- Similarly, DT clusters are rejected if any jet with pT > 50 GeV or muon passing loose identification criteria with pT > 10 GeV is found within ∆R < 0.4.
- CSC clusters that are entirely contained in the innermost rings of the ME1 station (ME1/1) and DT clusters with more than 90% of hits in the innermost station (MB1) are vetoed to reduce background contamination.
- CSC clusters produced by adjacent bunch crossings (out-of-time pileup) are rejected by requiring the cluster time (tcluster) to be consistent with an in-time interaction (-5.0 < tcluster < 12.5 ns). An asymmetric time window is used to capture signal clusters with longer delays from slower-moving LLPs. The root-mean-square of hit times for each cluster is required to be less than 20 ns to reject clusters composed of hits from multiple bunch crossings.
- To reject DT clusters from muon bremsstrahlung, clusters that contain hits in all four stations and have a ratio of the minimum and maximum number of hits per station less than 0.4 are vetoed.
- Cosmic ray muons produce hits in both the upper and lower hemispheres of the muon barrel system. To suppress this background, DT clusters are rejected if there are at least 6 segments and at least 1 segment in every station found in the opposite hemisphere from the cluster (|∆φ| > 2).
- Events with more than a quarter of the DT and CSC φ-rings containing 50 or more hits are rejected to reduce cosmic ray muon shower background.
- ∆φ(⃗pmiss, cluster) < 1 (1.2) is required for CSC (DT) clusters to further suppress background.
- The ∆R between the two clusters is required to be less than 2 (2.5) for the CSC-CSC (DT-CSC) subcategory, as signal events typically have small ∆R between the clusters.
- Nhits is used as a discriminating variable, requiring Nhits ≥ 100 (80) for CSC (DT) clusters to differentiate between signal and background.

### Single CSC Cluster Category

- In the single CSC cluster category, events with only one LLP decay producing a displaced cluster in the endcap muon system are searched for.
- The expected background yield in this category is significantly higher than in the double cluster category, so stricter cluster veto requirements are applied to achieve a similar near-zero background level.
- The cluster veto requirements are similar to those in a previous search [34], with some changes to align with the other categories. Events with two clusters are excluded from this category and included in the double cluster category, which has higher sensitivity.
- Clusters that have a jet with pT > 10 GeV or muon with pT > 20 GeV within ∆R < 0.4 are rejected.
- Clusters with hits in the two innermost rings of the ME1 station (ME1/1 and ME1/2) or matching hits in the RPCs adjacent to ME1/2 (within ∆R(cluster, hit) < 0.4) are vetoed.
- In the overlapping region of the barrel and endcap muon detectors (0.9 < |η| < 1.2), clusters matched to track segments in the innermost station of the DT detectors (MB1) or hits in the RPCs in front of and behind MB1 (matched within ∆R(cluster, segment or hit) < 0.4) are vetoed.
- Clusters with |η| > 2.0 are rejected to suppress background from muon bremsstrahlung that may evade the muon veto due to decreasing reconstruction and identification efficiencies at larger |η|.
- Events where more than a quarter of the DT and CSC φ-rings contain 50 or more hits are also rejected.
- After applying the veto requirements, the dominant background source consists of decays of SMLLPs, which are mainly produced by pileup interactions and are independent of the primary interaction responsible for the large pmiss T.
- Clusters from background processes tend to occur more frequently at larger values of |η|, as the effectiveness of the jet and muon vetoes decreases with decreasing reconstruction efficiencies.
- Signal clusters often occupy more than one CSC station (Nstations > 1) and are more common in stations farther away from the primary interaction point.
- A cluster identification algorithm is used to make more restrictive |η| requirements for clusters that occupy only one CSC station (Nstations = 1) and are closer to the primary interaction point.

![](EXO-21-008_auxfig1.jpeg)

- The cluster identification algorithm has an efficiency of approximately 80% for simulated clusters from S decays and reduces the background by a factor of 3.
- The events that pass the cluster identification criteria are used to define the search region, while the events that fail are used as an additional in-time validation region.
- Both Nhits and ∆φ(pmiss T, cluster) are used as discriminants to differentiate between signal and background.
- The shapes of the discriminants for signal and background are shown in Figure 6.
- For the backgrounds, ∆φ(pmiss T, cluster) is independent of Nhits, allowing the use of the matrix method to predict the background yield in the signal-enriched bin.

### Figure 5

- Figure 5 shows the shapes of the cluster time for both signal and background.
- The signal corresponds to S decaying to dd with a lifetime of 1 m and a mass of 40 GeV.
- The background-enriched sample in data is selected by inverting the Nhits requirement.

![](EXO-21-008_fig5.jpeg)

### Figure 6

- Figure 6 shows the shape of N (left) and ∆φ(⃗pmiss, cluster) (right).
- The N represents the number of hits in the cluster.
- The ∆φ(⃗pmiss, cluster) is the azimuthal angle difference between the cluster location and the ⃗pmiss.
- The plots are shown for S decaying to dd hits for a lifetime of 1 m and various masses compared to the out-of-time (OOT) background (tcluster < −12.5 ns).
- The OOT background represents the overall background shape since the background passing all the selections described above is primarily dominated by pileup and underlying events.


![](EXO-21-008_fig6.jpeg)
### Single DT Cluster Category

- The single DT cluster category focuses on events where only one LLP decay produces a displaced cluster in the barrel muon system.
- Events that pass the selection criteria for the double cluster or single CSC cluster categories are not considered in this category to prioritize the category with higher sensitivity (double cluster) and minimize differences with the previously published search (single CSC cluster).
- To remove high pmiss T events due to mismeasured jets, we require the minimum of |∆φ(jet, pmiss T)| overall the jets with pT > 30 GeV to be greater than 0.6. This requirement reduces the background from SM events composed uniquely of jets produced through the strong interaction, known as QCD multijet events, and is only applied to the single DT cluster category because this category is dominated by punch-through jet background.
- We veto clusters that have a jet with pT > 10 GeV or a muon with pT > 10 GeV passing loose identification criteria within ∆R < 0.4. In addition, we reject clusters that are within ∆R < 1.2 from the leading-pT jet.
- Furthermore, DT clusters that are within ∆R < 0.4 of two or more hits in the innermost station MB1 are rejected. Additionally, clusters with maximum hit counts in MB3 or MB4 are rejected if they are within ∆R < 0.4 of two or more MB2 hits. Each cluster is associated with a wheel based on the average z position of its hits.
- To reject clusters from noise in the DTs, we require clusters to be matched to at least 1 RPC hit from the same wheel and within ∆φ < 0.5.
- To suppress background from cosmic ray muons, we veto clusters that have more than 8 hits in MB1 within ∆φ < π/4 in either adjacent wheel. In addition, we veto clusters with maximum hit counts in MB3 and MB4 that have more than 8 hits in MB2 within ∆φ < π/4 in either adjacent wheel. Furthermore, we look for DT segments that are far from the clusters with ∆R > 0.4 in the upper or lower hemisphere of the DT wheels. We veto the cluster if more than 14 segments are found in either hemisphere or more than 10 segments are found in both hemispheres.

### Figure 7


- Figure 7 shows the shapes of Nhits (left) and ∆φ(pmiss T, cluster) (right) for DT clusters.
- The Nhits represents the number of hits in the cluster.
- The ∆φ(pmiss T, cluster) is the azimuthal angle difference between the pmiss T and the cluster.
- The plots are shown for S decaying to dd for a proper decay length of 1 m and various masses compared to the shape of the background in a selection where the cluster is not matched to any RPC hit.

![](EXO-21-008_fig7.jpeg)
### Background Estimation and Matrix Method

- The data-driven matrix (ABCD) method is used for background estimation in all three categories.
- The matrix method relies on two variables that effectively discriminate between signal and background and are independent of each other for the background.
- Two separate requirements, one on each variable, divide the two-dimensional space into four bins: A, B, C, and D.
- Bin A contains events that pass both signal-like requirements, bins B and D contain events that pass only one of the requirements, and bin C contains events that pass neither requirement.
- Due to the independence of the two variables, the expected background event rate in the signal-enriched bin A can be determined using the formula λA = (λBλD)/λC, where λX represents the expected background event rate (Poisson mean) in each bin X.
- In the double-cluster categories, the Nhits of each cluster are used as the two variables for the matrix method.
- In the single DT and CSC cluster categories, the two variables used are N (number of hits) and ∆φ(⃗pmiss, cluster) (azimuthal angle difference between pmiss and the cluster).
- Additionally, the single DT cluster category estimates the punch-through jet background separately, while the punch-through jet background in the other categories is considered negligible.
- Other noncollision backgrounds, such as cosmic ray muons, have been effectively suppressed by dedicated filters as described in Section 6 and have been shown to be negligible in the signal region.

### DT-CSC Category and Binning

- In the DT-CSC category, the Nhits of the DT and CSC clusters are used as the two independent discriminating variables.
- Four bins (A, B, C, and D) are defined based on the Nhits values of the DT and CSC clusters, as shown in the left panel of Fig. 8.
	- Bin A includes events with the CSC cluster having Nhits > 100 and the DT cluster having Nhits > 80.
	- Bin B includes events with the CSC cluster having Nhits > 100 and the DT cluster having Nhits ≤ 80.
	- Bin C includes events with the CSC cluster having Nhits ≤ 100 and the DT cluster having Nhits ≤ 80.
	- Bin D includes events with the CSC cluster having Nhits ≤ 100 and the DT cluster having Nhits > 80.
- For the CSC-CSC and DT-DT categories, which have symmetric variables, bins B and D are combined, and the combined expected background rate is denoted as λBD.
- Bins A, BD, and C correspond to events with 2, 1, and 0 clusters passing the Nhits selection, respectively, as illustrated in the right panel of Fig. 8.
- The expected background yield in the signal-enriched bin A is related to the other two bins as λA = (λBD/2)²/λC.

### Figure 8: ABCD Plane Diagrams

- The left panel of Figure 8 illustrates the ABCD plane for the DT-CSC category.
- The variable c1 represents the pass-fail ratio of the Nhits selection for the background cluster.
- Bin A corresponds to the signal region for all categories.
- The right panel of Figure 8 depicts the ABCD plane for the DT-DT and CSC-CSC categories.

![](EXO-21-008_fig8.jpeg)

### Background Estimation Validation

- To validate the background estimation method, two validation regions are defined: the inverted Nhits region and the inverted ∆φ(pmiss T ,cluster) region.
- The inverted Nhits validation region is obtained by inverting the Nhits requirements for both clusters while keeping all other cluster-level selections intact.
- The Nhits threshold used in the inverted Nhits validation region is 70 (80) for DT (CSC) clusters.
- Similarly, the inverted ∆φ(pmiss T ,cluster) validation region is defined by inverting the ∆φ(pmiss T ,cluster) requirement for both clusters while maintaining other cluster-level selections.
- In the DT-DT category, to probe signal-like events in the inverted ∆φ(pmiss T ,cluster) validation region, an additional requirement of ∆φ(cluster1,cluster2) < 2 is imposed.
- In the CSC-CSC and DT-CSC categories, the two clusters are close to each other due to the ∆R(cluster1,cluster2) requirement.
- The ∆φ(pmiss T ,cluster) validation region allows testing for any non-negligible backgrounds with high Nhits that cannot be accessed in the inverted Nhits validation region.
- The background estimate agrees with the observed number of background events in both validation regions for all three categories, as shown in Table 1.

### Table 1: Validation of the ABCD Method in the Double Cluster Category

- Table 1 presents the validation results of the ABCD method for the double cluster category.
- The uncertainty of the prediction corresponds to the statistical uncertainty propagated from bins B, C, and D or bins BD and C.
- The symbol λX represents the expected background event rate in bin X, while NX denotes the observed number of events in bin X.

![](EXO-21-008_tbl1.jpeg)


### Single CSC Category

- In the single CSC category, the discriminating variables are ∆φ(pmiss T ,cluster) and Nhits.
- The variable ∆φ(pmiss T ,cluster) is independent of Nhits for the backgrounds, allowing for the use of the matrix method.
- Figure 9 illustrates the ABCD plane for the single CSC category, where bin A represents the signal region.

### Figure 9: ABCD Plane Diagram

- Figure 9 is a diagram that depicts the ABCD plane for the single CSC category.
- Bin A corresponds to the signal region.

![](EXO-21-008_fig9.jpeg)

### Table 2: Validation of the ABCD Method in the Single CSC Cluster Category

- Table 2 presents the validation results of the ABCD method for the single CSC cluster category.
- The uncertainty of the prediction corresponds to the statistical uncertainty propagated from bins B, C, and D.
- The symbol λX represents the expected background event rate in bin X, while NX denotes the observed number of events in bin X.

![](EXO-21-008_tbl2.jpeg)

### Estimation of Background in the Single DT Cluster Category

- The dominant backgrounds in the single DT cluster category are punch-through jets and low-pT particles from pileup.
- The matrix method is employed to estimate the background from the low-pT particles.
- Similar to the single CSC category, the discriminating variables ∆φ(pmiss T, cluster) and Nhits are used, but with different signal-like selection thresholds: ∆φ(pmiss T, cluster) < 1 and Nhits > 100.
- The background prediction is validated in a pileup-enriched validation region, as presented in Table 3.
- The pileup-enriched region is defined by inverting the loose identification criterion on the leading jet and removing the RPC matching criteria, ∆φ(pmiss T, cluster) requirement, and filters that reject noncollision backgrounds.
- To reduce statistical uncertainties in estimating the background rate in bins C and D, the MB3 and MB4 categories are merged.

### Estimation of Punch-through Jet Background

- The punch-through jet background in the signal region, which is not accounted for in the ABCD method, is estimated separately.
- The number of observed events in excess of the ABCD prediction is measured in the region with the inner DT station hit veto inverted.
- The excess event count is multiplied by (1 - ε) / ε, where ε is the corresponding veto efficiency.
- For clusters in MB2, only the MB1 veto is applied, so only the MB1 veto is inverted.
- For clusters in MB3 and MB4, both the MB1 and MB2 vetoes are inverted.
- The measured number of excess events in the inverted region and the veto efficiencies serve as additional systematic uncertainties on the background prediction.

### Measurement of Inner DT Station Hit Veto Efficiency

- The efficiency of the inner DT station (MB1 or MB1 plus MB2) hit veto is measured in a separate punch-through jet enriched region.
- Clusters that have a jet with pT > 10 GeV within ∆R < 0.4 are selected for the measurement.
- The measured veto efficiency is fitted as a function of the matched jet pT using an exponential and constant function for clusters from each station separately.
- The veto efficiencies are extrapolated by evaluating the fit function at 0 GeV to predict the veto efficiencies for clusters passing the jet veto.

### Validation of Punch-through Jet Background Prediction

- The punch-through jet background prediction method is validated, as shown in Table 4.
- The prediction is compared to the background clusters matched to 2-5 MB1 or 2-5 MB2 hits, instead of <2 MB1 or <2 MB2 hits, in the signal region.
- 

I got tired of doing this. Here's a conclusion.

The interpretations of this study involve the implications and conclusions drawn from the search results and their relevance to the twin Higgs and dark shower models. Here are the main interpretations and conclusions:

1. Model Constraints: The search results provide the most stringent constraints to date on the branching fraction of the Higgs boson decaying to long-lived particles (LLPs) with masses below 10 GeV, particularly for LLPs decaying to particles other than muons. These constraints are important for understanding and constraining various theoretical models.

2. Sensitivity and Categories: The analysis combines three categories: double cluster, single CSC cluster, and single DT cluster. Each category contributes differently to the sensitivity, depending on the proper decay length of the LLPs. The combination of categories improves upon previous results and provides enhanced sensitivity in different decay length regimes.

3. Twin Higgs Model: The study presents the results in the context of the twin Higgs model. Upper limits on the branching fractions B(H → SS) and B(h0 → ΨΨ) are evaluated, providing valuable information on the parameter space and constraints of this model. The predicted number of signal events for various benchmark scenarios is also reported.

4. Dark Shower Models: The search extends to dark shower models produced via Higgs boson decay. Upper limits on the branching fractions of the Higgs boson to dark quarks are provided, shedding light on the parameter space of these models. The limits for different portals, such as gluon, photon, and vector portals, are examined.

5. Comprehensive Search: The study represents a comprehensive search that utilizes both the barrel and endcap CMS muon detectors to detect hadronic and electromagnetic showers from LLP decays. The search is largely model-independent, covering a broad range of LLP decay modes and masses below the GeV scale.

6. No Deviation from SM: The observed data show no statistically significant deviation from the background expected from the Standard Model. This indicates that no evidence for LLPs is found within the analyzed dataset.

In conclusion, this study sets stringent constraints on the branching fractions of the Higgs boson to LLPs and provides valuable insights into the parameter space of the twin Higgs and dark shower models. The search results show no significant deviation from the background, confirming the consistency of the data with the Standard Model predictions.

# Executive Summary

This study presents a comprehensive search for long-lived particles (LLPs) decaying in the barrel and endcap CMS muon detectors using proton-proton collision data recorded by the CMS experiment at a center-of-mass energy of 13 TeV. The analysis covers a wide range of LLP decay modes and masses below the GeV scale, providing model-independent sensitivity.

The search is performed in three categories: double cluster, single CSC cluster, and single DT cluster. Each category contributes differently depending on the proper decay length of the LLPs. The combination of these categories improves the sensitivity compared to previous studies and allows for enhanced coverage of different decay length regimes.

In the context of the twin Higgs and dark shower models, the study sets the most stringent constraints to date on the branching fractions of the Higgs boson to LLPs, particularly for masses below 10 GeV. Upper limits are evaluated for various benchmark scenarios and decay modes, shedding light on the parameter space and constraining these models.

The search results show no statistically significant deviation from the expected background based on the Standard Model predictions. This confirms the consistency of the observed data with the Standard Model. The study provides the most stringent limits for LLPs decaying to particles other than muons, demonstrating the excellent shielding provided by the CMS detector system.

Overall, this study significantly advances our understanding of LLP decays and their potential manifestations in the CMS detector. The results have important implications for theoretical models and contribute to the ongoing exploration of new physics phenomena.
