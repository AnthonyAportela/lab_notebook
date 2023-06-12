Summarized from ![EXO-20-015](/knowledge_base/documents/EXO-20-015-paper.pdf)

# Search for long-lived particles decaying in the CMS endcap muon detectors in proton-proton collisions at √s = 13 TeV

### Abstract:
- A search for long-lived particles (LLPs) produced in decays of standard model (SM) Higgs bosons is presented.
- Data sample: 137 fb−1 of proton-proton collisions at √s = 13 TeV, recorded at the LHC in 2016–2018.
- Novel technique sensitive to a broad range of LLP decay modes and to masses as low as a few GeV.
- No excess of events above the SM background is observed.
- Most stringent limits to date on the branching fraction of the Higgs boson to LLPs subsequently decaying to quarks and τ+τ− are found for proper decay lengths greater than 6, 20, and 40m, for LLP masses of 7, 15, and 40 GeV, respectively.

### Introduction:
- Many extensions of the standard model (SM) predict the existence of neutral, weakly-coupled particles with long lifetimes (LLPs).
- LLPs arise in various models: split supersymmetry (SUSY), SUSY with weak R-parity violation, SUSY with gauge-mediated supersymmetry breaking, stealth SUSY, hidden valley scenarios, baryogenesis triggered by weakly interacting massive particles, inelastic dark matter, and twin Higgs models.

### Experimental Setup:
- First search at the LHC using a muon detector as a sampling calorimeter to identify showers produced by decays of LLPs.
- CMS endcap muon detectors (EMD) composed of detector planes interleaved with the steel layers of the magnet flux-return yoke.
- Decays of LLPs in the EMD induce hadronic and electromagnetic showers, resulting in a high hit multiplicity in localized detector regions.
- Hadron calorimeter, solenoid magnet, and steel flux-return yoke provide 20–27 nuclear interaction lengths of shielding to suppress punch-through particle showers.
- Sensitivity to LLPs decaying to final states including hadrons, taus, electrons, or photons.
- LLPs decaying to muons will rarely produce a particle shower and remain undetected by this search.
- Focus on a benchmark simplified model based on the twin Higgs scenario where the SM Higgs boson decays to a pair of neutral long-lived scalars, each of which decays to a pair of bottom quarks, τ leptons, or down quarks.
- Previous limits for mean proper decay lengths cτ < 0.3 m were based on a search for displaced jets in the CMS tracker.
- For cτ > 0.3 m, displaced vertices in the ATLAS muon spectrometer set the most stringent previous limit.

### Advantages of using the CMS EMD as a sampling calorimeter:
- The absorber material in front of the EMD acts as a shield, maintaining a low background level with the detection of a single LLP decay.
- Current displaced vertex searches require the detection of two LLP decays to achieve a similar low background level.
- The calorimetric nature of the particle shower in the EMD makes the search equally sensitive to all LLP masses considered, unlike vertex reconstruction which becomes less efficient with increasing LLP mass due to smaller opening angles.

### Improved signal acceptance and sensitivity:
- Compared to previous results, the signal acceptance and sensitivity are improved by more than a factor of 6 (2) for an LLP mass of 7 GeV (≥15 GeV) and cτ > 100m.
- Not requiring a second detected LLP decay significantly enhances the signal acceptance at very large cτ.
- This search is the first to be sensitive to LLP decays with cτ up to 1000 m and mass between 40 and 55 GeV for Higgs boson to LLP decay branching fractions below 20%.
- Tabulated results and instructions to reproduce the signal efficiency are provided in HEPData.

### Experimental setup Cont.:
- Based on proton-proton collision data at 13 TeV collected during 2016–2018 at the CERN LHC, with an integrated luminosity of 137 fb−1.
- The CMS experiment features a superconducting solenoid of 6 m internal diameter providing a magnetic field of 3.8 T.
- Components within the solenoid volume include a silicon pixel and strip tracker, a lead tungstate crystal electromagnetic calorimeter, and a brass and scintillator hadron calorimeter.
- Muons are detected using three technologies: drift tubes (DTs) in the barrel, cathode strip chambers (CSCs) in the endcaps, and resistive-plate chambers (RPCs) in the barrel and endcaps.
- Details of the CMS detector and the coordinate system can be found in Ref. [33].

### CSC detector:
- The CSC detector plays a critical role in the described search and covers a region of pseudorapidity between |η| = 0.9 and 2.4.
- It consists of four "stations" in each endcap (labeled ME1 to ME4) located at approximately 7, 8, 9.5, and 10.5 m away from the interaction point along the beamline axis (z) on both ends of the detector.
- The chambers are composed of six thin layers containing cathode strips and anode wires, sandwiched between steel absorbers.
- Charged particles passing through the chambers ionize the gas molecules, creating electrons that are accelerated towards the anode wires, producing an avalanche.
- Positive ions travel to the opposite end and induce signals in the cathode strips.
- Combining the signals from the anode wires and cathode strips allows determination of the space-time coordinates of each hit with a resolution of 400–500 μm and 5 ns.

### CMS event reconstruction:
- Particle-flow (PF) algorithm combines information from the tracker, calorimeters, and muon detectors to identify charged and neutral hadrons, photons, electrons, and muons, known as PF candidates.
- PF candidates are clustered into jets using the anti-kT algorithm with a distance parameter of 0.4.
- The negative vectorial sum of the momenta of all PF candidates in the transverse component is the missing transverse momentum $\vec{p}^{miss}_{T}$, indicated as $p^{miss}_{T}$.
- The primary pp interaction vertex is determined as the candidate vertex with the largest value of summed physics-object $p^2_{T}$.
- Jets are reconstructed using the jet finding algorithm with tracks assigned to candidate vertices as inputs.
- Missing transverse momentum is associated with the negative vector sum of the $p_{T}$ of these jets.
- The reconstructed jet energies are corrected for the average neutral energy density from overlapping pp interactions (pileup).

### Simulated signal samples:
- Simulated H → SS signal samples are generated using POWHEG 2.0.
- Signal samples include gluon fusion, vector boson fusion, WH, ZH, and ttH production modes.
- Higgs boson mass is set to 125 GeV, while the S mass (mS) is set to 7, 15, 40, or 55 GeV.
- The decay length cτ is varied between 1 mm and 100 m.
- Parton showering, hadronization, and the underlying event are modeled using P Y T H I A 8.205 and 8.230 with parameters set by CUETP8M1 and CP5 tunes.
- NNPDF 3.0 and 3.1 parton distribution functions are used.
- The response of the CMS detector is modeled using the GEANT4 package.
- Simulated minimum-bias events are mixed with hard interactions to match the observed pileup distribution in data.

### Event selection and background suppression:
- Events with large pmiss can be produced by LLPs that decay after traversing the calorimeter systems, as their momentum remains undetected.
- Events with pmiss > 120 GeV are triggered, and offline requirement of pmiss > 200 GeV is applied.
- At least one jet with p > 50 GeV and pseudorapidity |η| < 2.4 is required, as signal events passing the pmiss requirement are always accompanied by a jet from initial-state radiation.
- Backgrounds from W boson and top quark production are suppressed by vetoing events containing an isolated electron (muon) passing loose identification criteria with pT > 35 (25) GeV and |η| < 2.5 (2.4).

### CSC hit clustering:
- CSC hits are clustered in η and azimuthal angle φ using the DBSCAN algorithm.
- The DBSCAN algorithm groups hits based on high-density regions.
- A minimum of 50 hits and a "distance parameter" of 0.2 are used for clustering.
- Geometric acceptance for at least one signal LLP of mass 7-55 GeV decaying in the fiducial region of the CSC detectors ranges from 4-27% for cτ between 1-10 m, decreasing to 0.5-5% for cτ of 100 m.
- Efficiency for the showers to be reconstructed by the DBSCAN algorithm is approximately 80% for bb and dd decays and 65% for τ+τ− decays.
- Accuracy of the simulation prediction for cluster reconstruction efficiency is validated using clusters produced in Z → μ+μ− data events where one muon undergoes bremsstrahlung in the EMD, and the associated photon produces an electromagnetic shower. Systematic uncertainty is accounted for in the overall uncertainty on the reconstruction efficiency.

### SM backgrounds and background suppression:
- Main SM backgrounds include punch-through jets, muons undergoing bremsstrahlung, and decays of SM LLPs such as the neutral kaon $K^0_L$.
- To suppress background from punch-through jets or muon bremsstrahlung, clusters with a jet or muon within a ΔR = √(Δη)² + (Δφ)² < 0.4 cone and with jet pT > 10 GeV or muon pT > 20 GeV are rejected.
- Clusters with hits in the two innermost rings of the ME1 station (ME1/1 and ME1/2) or matching hits in the RPCs adjacent to ME1/2 (with ∆R(cluster, hit) < 0.4) are vetoed.
- In the overlapping region of the barrel and endcap muon detectors (0.8 < |η| < 1.2), clusters matched to track segments in the innermost station of the DT detectors (MB1) or hits in the RPCs in front of and behind MB1 matched within ∆R(cluster, segment/hit) < 0.4 are vetoed.
- Clusters with |η| > 2.0 are rejected to suppress muon bremsstrahlung background that may have evaded the muon veto due to high muon reconstruction and identification inefficiencies at larger |η|.

### Efficiency measurements and corrections:
- Inefficiencies for the jet, ME1, MB1, and RPC hit vetoes are primarily caused by pileup particles and random noise.
- Measurements of these inefficiencies are done by randomly sampling the (η,φ) locations of clusters from the signal distribution and evaluating whether a jet or ME1/MB1/RPC hit is observed within a ΔR < 0.4 cone around the cluster's location, using Z → μ+μ− data events with the Z decay muons removed.
- The loss of efficiency due to the muon veto is also affected by muon segments produced by particles resulting from the LLP decay itself.
- A control sample of clusters matched to trackless jets resembling the signal LLP decay is used to validate the correction for the muon veto inefficiency.
- A 10% correction is applied to the signal efficiency to account for the simulation's mismodeling of the vetoes.

### Background suppression:
- To suppress noncollision backgrounds, events containing beam-halo muons or calorimeter noise are removed using filters.
- Background from cosmic ray muon showers, which produce hits in multiple regions of the CMS detector, is suppressed by rejecting events where more than a quarter of DT and CSC φ-rings contain 50 or more hits.
- The efficiency for signal events to pass the ME1/1 and ME1/2 vetoes depends on the LLP decay location and has an average value between 30-60% for the considered signal models.
- After applying the veto requirements, the dominant background source is decays of SM LLPs, predominantly produced by pileup interactions independent of the primary interaction that yielded the large pmiss.
- Clusters produced by out-of-time (OOT) pileup, which can occur concurrently with the primary interaction or in adjacent bunch crossings, are rejected by requiring the cluster time (tcluster) to be consistent with an in-time interaction (-5.0 < tcluster < 12.5 ns).
- A larger time window is used at positive values to capture signal clusters with longer delays from slower-moving LLPs.
- The time window requirement suppresses the background by a factor of 5.
- An out-of-time validation region (VR) is defined to validate the background prediction method by selecting events containing clusters with tcluster ≤ -5 ns.
- To reject clusters composed of hits from multiple bunch crossings, the root mean square spread of a cluster's hit times is required to be less than 20 ns.

### Distinguishing features of signal and background clusters:
- Background clusters occur more frequently at larger values of |η| due to increasing reconstruction inefficiencies of the jet and muon vetoes.
- Signal clusters often occupy more than one CSC station and occur more frequently in stations farther away from the primary interaction point.
- A cluster identification algorithm is designed to make progressively more restrictive |η| requirements as the number of CSC stations containing hits and the distance between the station and the primary interaction point decrease.
- The cluster identification algorithm has approximately 80% efficiency for clusters originating from S decays in the simulation and suppresses the background by a factor of 3.

### Signal efficiency and search region:
- The events passing the cluster identification criteria define the search region, while the events that fail are used as an additional in-time validation region (VR).
- The signal efficiency, which includes cluster reconstruction, veto, and identification selections, is shown as a function of the simulated r and z decay positions of the particle S in Figure 1.
- The combined efficiency averaged over the full region of the CSC detector is 15-30% for the considered signal models.

### Figure 1:
- The figure shows the signal efficiency of the combined cluster reconstruction, veto, and identification selections as a function of the simulated r and z decay positions of S decaying to bb, considering a mass of 15 GeV and a uniformly distributed mixture of events with cτ between 1-10 m.
- The barrel and endcap muon stations are depicted as black boxes and labeled with their station names, illustrating the geometry of the muon detectors.
- Regions occupied by the steel return yoke are shaded in gray.

![](/knowledge_base/img/EXO-20-015_fig1.jpeg)

### Discrimination between signal and background:
- The number of hits in the cluster ($N_{hits}$) and the azimuthal angle between the cluster location and the missing transverse momentum ($\Delta \phi_{c}$) are used for the final discrimination between signal and background.
- The distribution of $N_{hits}$ remains high at large $N_{hits}$ values for signal events, but decreases sharply for background events with increasing $N_{hits}$ values.
- For signal events, $\Delta \phi_{c}$ peaks near zero because the $\vec{p}^{miss}_{T}$ results from the same S decay that produced the cluster or due to the selection of highly boosted Higgs bosons where the S and H momentum vectors are spatially close.
- For backgrounds, $\Delta \phi_{c}$ is independent of $N_{hits}$, enabling the use of the matrix (ABCD) method to predict the background yield in the signal-enriched bin D.
- The background yield in bin D (N_D) is predicted using N_D = (N_A N_C)/N_B, where N_X represents the background event yield in each bin X.
- Table displaying ABCD region:

|        | ∆φc ≥ 0.75          | ∆φc < 0.75          |
|--------|---------------------|---------------------|
| Nhits > 130   | Bin A               | Bin D               |
| Nhits ≤ 130   | Bin B               | Bin C               |

- The distributions of Nhits in bins C and D and ∆φc in bins A and D are shown in Figure 2 for both data and the signal assuming S → dd decays with various S masses.

### Figure 2:
- The figure shows the distributions of Nhits (left) and ∆φc (right) in the search region.
- The background predicted by the fit is represented in blue, with the shaded region indicating the fitted uncertainty.
- The expected signal with B(H→SS)=1%, S→dd, and cτ=1m is shown for S masses of 7, 15, 40, and 55 GeV in various colors and dotted lines.
- The Nhits distribution includes only events in bins C and D, while the ∆φc distribution includes only events in bins A and D.
- The last bin in the Nhits distributions includes overflow events.

![](/knowledge_base/img/EXO-20-015_fig2.jpeg)

### Background estimation and validation:
- To account for a potential signal contribution in bins A, B, and C, a binned maximum likelihood fit is performed simultaneously in the four bins, with a common signal strength parameter scaling the signal yields.
- The background component of the fit is constrained to follow the ABCD relationship.
- Various systematic uncertainties affecting the signal yield are taken into account, including missing higher order QCD corrections (21%), cluster reconstruction and identification efficiency (6%), veto efficiencies (4%), jet energy scale (4%), simulation sample statistical uncertainties (3-5%), and luminosity (1.6%).
- These systematic uncertainties, along with the statistical uncertainty of the simulated signal samples, are treated as nuisance parameters in the fit.
- The background estimation procedure is validated using events in the out-of-time (OOT) and in-time validation regions (VRs).
- The predicted background yields in the OOT and in-time VRs are 1.3 ± 0.6 and 1.4 ± 0.6 events, respectively, while 2 events are observed in both VRs.
- In the signal-depleted A, B, and C bins of the search region, 3, 96, and 47 events are observed in the data, respectively.
- Using the fit procedure without assuming any signal contribution, the predicted background events in the signal-enriched region D are 2.0 ± 1.0, and 3 events are observed.
- The uncertainty in the background prediction is mainly driven by the statistical uncertainty in the event yields of the signal-depleted A, B, and C bins.
- No excess of events above the SM background is observed.

### Upper limits and exclusion:
- 95% confidence level (CL) limits on the branching fraction B(H → SS) are evaluated using the modified frequentist criterion CLs with the profile likelihood ratio test statistic.
- Figure 3 shows the upper limits for the S → dd and S → τ+τ− decay modes as a function of cτ for selected values of mS.
- The exclusion limits for S → bb are within 3% of the exclusion limits for S → dd for mS > 2mb.

### Figure 3:
- Figure 3 shows the 95% confidence level (CL) expected (dotted curves) and observed (solid curves) upper limits on the branching fraction B(H → SS) as functions of cτ for the S → dd (left) and S → τ+τ− (right) decay modes.
- The exclusion limits are depicted for four different mass hypotheses: 7, 15, 40, and 55 GeV.

![](/knowledge_base/img/EXO-20-015_fig3.jpeg)

### Summary:
- The CMS experiment used proton-proton collision data at √s = 13 TeV recorded from 2016 to 2018, with an integrated luminosity of 137 fb−1.
- This study presents the first search for long-lived particles (LLPs) beyond the standard model (SM) using the CMS endcap muon detectors as a calorimeter.
- The search is model-independent and sensitive to a wide range of LLP decay modes and masses as low as a few GeV.
- The excellent shielding provided by the inner CMS detector allows for a low background level and enables the search for a single LLP decay.
- No significant deviation from the SM background is observed.
- The most stringent limits on the branching fraction of the Higgs boson to LLP decays to dd, bb, and τ+τ− are set for proper decay lengths cτ > 6, 20, and 40 m, and LLP masses of 7, 15, and 40 GeV, respectively.
- For cτ > 100 m, this search outperforms the previous best limits by a factor of 6 (2) for an LLP mass of 7 (≥15) GeV.

# Executive Summary:
This study presents a search for long-lived particles (LLPs) beyond the standard model using data from proton-proton collisions at the CMS experiment. The goal was to explore the existence of new particles with long lifetimes that could decay in various ways. The unique approach employed the CMS endcap muon detectors as a calorimeter, allowing for a model-independent search with sensitivity to a wide range of LLP masses and decay modes.

The analysis utilized a dataset of 137 fb−1 collected at a center-of-mass energy of 13 TeV over the period of 2016-2018. By leveraging the shielding capabilities of the inner CMS detector, the background level was kept low, enabling the identification of single LLP decays. The observed data did not exhibit any significant deviation from the expected standard model background.

The main outcome of this study is the establishment of the most stringent limits to date on the branching fraction of the Higgs boson decaying into LLPs that subsequently decay into various final states, such as dd, bb, and τ+τ−. The limits were set for different LLP masses and proper decay lengths. Notably, for large decay lengths (cτ > 100 m), the obtained limits outperformed previous results by a factor of 6 (2) for LLP masses of 7 (≥15) GeV.

These findings contribute to the ongoing exploration of physics beyond the standard model. The use of the CMS endcap muon detectors as a calorimeter proved to be an effective strategy, offering a valuable complement to existing search techniques. The study opens new avenues for understanding the properties and characteristics of long-lived particles and provides valuable input for theoretical models and future experimental efforts.

# Limits and Constraints

| Decay Modes | Proper Decay Length (cτ) | LLP Mass (GeV) | Limits/Constraints                 |
|-------------|-------------------------|----------------|-----------------------------------|
| dd          | cτ > 6 m                | 7              | Most stringent limit to date      |
| bb          | cτ > 20 m               | 15             | Most stringent limit to date      |
| τ+τ−       | cτ > 40 m               | 40             | Most stringent limit to date      |
| dd          | cτ > 100 m              | 7              | Outperforms previous limits by 6x |
| bb          | cτ > 100 m              | ≥15            | Outperforms previous limits by 2x |
