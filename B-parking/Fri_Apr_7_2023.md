[Prev](/B-parking/Wed_Apr_5_2023.md)

Today I'm focusing on looking at the yields instead of the branching ratio limits.

The yields for two different sample sets need to have the gen filter accounted

So I should compare the yield from christina's samples with the yield from aram's samples, but for it to be a fair comparison, we do not include SF in aram's, but we do include the gen filter corrections.

here are the two yields:
Aram's:
```python
N_sig = muonfiltereff * genfiltereff[dataset] * new_nEvents * xsec * lumi / nEvents[dataset][dem_cut]
```

Christina's:
```python
 N_sig2 = N_bb * new_nEvents2 / nEvents2[dataset][dem_cut]
```

And these are the resulting yields:

![fri_apr_7_2023_plot1](/B-parking/img/fri_apr_7_2023_plot1.png)

They seem to be off from each other by a factor of 100. Maybe I should also try just using the simple estimate for number of b mesons in aram's like I did for christina's.

Aram's:
```python
N_sig = N_bb * muonfiltereff * genfiltereff[dataset] * new_nEvents / nEvents[dataset][dem_cut]
```

Christina's:
```python
 N_sig2 = N_bb * new_nEvents2 / nEvents2[dataset][dem_cut]
```

Now this is the resulting yield:
![fri_apr_7_2023_plot2](/B-parking/img/fri_apr_7_2023_plot2.png)
Now there's a factor of 100 difference but in the other direction.

Maybe they both need a muon filter correction? Let's try that:

Aram's:
```python
N_sig = N_bb * muonfiltereff * genfiltereff[dataset] * new_nEvents / nEvents[dataset][dem_cut]
```

Christina's:
```python
 N_sig2 = N_bb * muonfiltereff * new_nEvents2 / nEvents2[dataset][dem_cut]
```

Fingers crossed...
![fri_apr_7_2023_plot3](/B-parking/img/fri_apr_7_2023_plot3.png)YEAH

well that makes plenty of sense. Both sets are muon filtered. Aram's is additionally gen filtered. Remember that the SF is not included anywhere yet.

Ok, let's look at the BR limits now instead.

Aram's:
```python
N_sig = N_bb * muonfiltereff * genfiltereff[dataset] * new_nEvents / nEvents[dataset][dem_cut]

N_bkg = N_bb_p * N_bb * nEvents['background'][num_cut]/nEvents['background'][dem_cut] 

BR = 2 * np.sqrt(N_bkg)/N_sig

```

Christina's:
```python
N_sig2 = N_bb * muonfiltereff * new_nEvents2 / nEvents2[dataset][dem_cut]

N_bkg2 = N_bb_p * N_bb * nEvents2['background'][num_cut]/nEvents2['background'][dem_cut] 

BR2 = 2 * np.sqrt(N_bkg2)/N_sig2
```

with the following plots:
![fri_apr_7_2023_plot4](/B-parking/img/fri_apr_7_2023_plot4.png)

and a factor difference of:
![fri_apr_7_2023_plot5](/B-parking/img/fri_apr_7_2023_plot5.png)
...3-4 times.

This seems wrong. Apparently, the N_bkg is different, when they should be the same.

Christina's PhiToPiPlusPiMinus_mPhi0p3_ctau300: 377.90949893447055
Christina's PhiToPi0Pi0_mPhi0p3_ctau300: 377.90949893447055
Aram's PhiToPiPlusPiMinus_mPhi0p3_ctau300: 42.186340864368596
Aram's PhiToPi0Pi0_mPhi0p3_ctau300: 42.186340864368596

Different by about a factor of 10, which when run through a square root like it is in the BR calc, turns into a factor of 3-4. Ok, so that narrows it down a bit.

This whole time we've been assuming that aram's ntupler was run on the same amount of data as christina. soo that's definitly an issue.

Additionally, there's still a factor of 2 difference in the yield plot.

Maybe the difference is in the cutflow code?

Newer code:
```python
Cuts = {
		'posttrigger': dummy, 
		'llp_acc': (events.gLLP_csc == 1) if signame in dataset else dummy,
		'num Cluster > 0': (events.nCscRechitClusters > 0),
		'dR_gllp_cls < .4': (events.RechitCluster_llp_deltaR < .4) if signame in dataset else dummy,
		'dR_lmuon_cls > .8': (events.RechitCluster_leadmuon_deltaR > .8),
		'ME1112_veto': ((events.cscRechitClusterNRechitChamberPlus11 <= 0)&(events.cscRechitClusterNRechitChamberMinus11 <= 0)&
						(events.cscRechitClusterNRechitChamberPlus12 <= 0)&(events.cscRechitClusterNRechitChamberMinus12 <= 0)),
		're12_veto': (events.cscRechitCluster_match_RE12_0p4 == 0),
		'mb1_veto': (events.cscRechitCluster_match_MB1Seg_0p4 == 0),
		'rb1_veto': (events.cscRechitCluster_match_RB1_0p4 == 0),
		'muon_veto_pt < 20': (events.cscRechitClusterMuonVetoPt < 20),
		'-5 < cls_time < 12.5': ((events.cscRechitClusterTimeWeighted <= 12.5)&(events.cscRechitClusterTimeWeighted >= -5)),
		'|cls_timeSpread| < 20': (events.cscRechitClusterTimeSpreadWeightedAll <= 20),
		'|cls_eta| < 1.9': (abs(events.cscRechitClusterEta) < 1.9),
		'cut_based_ID': (((events.cscRechitClusterNStation10 >  1) & (abs(events.cscRechitClusterEta) < 1.9)) |
						 ((events.cscRechitClusterNStation10 == 1) & (abs(events.cscRechitClusterAvgStation10) == 4) & (abs(events.cscRechitClusterEta) < 1.8)) |
						 ((events.cscRechitClusterNStation10 == 1) & (abs(events.cscRechitClusterAvgStation10) == 3) & (abs(events.cscRechitClusterEta) < 1.5)) |
						 ((events.cscRechitClusterNStation10 == 1) & (abs(events.cscRechitClusterAvgStation10) == 2) & (abs(events.cscRechitClusterEta) < 1.7)) |
						 ((events.cscRechitClusterNStation10 == 1) & (abs(events.cscRechitClusterAvgStation10) == 1) & (abs(events.cscRechitClusterEta) < 1.0))),
		'cls_size > 130': (events.cscRechitClusterSize >= 130),
	}
```

Older code:
```python
Cuts = {
		'posttrigger': dummy, 
		'llp_acc': (events.gLLP_csc == 1) if signame in dataset else dummy,
		'num Cluster > 0': (events.nCscRechitClusters > 0),
		'dR_gllp_cls < .4': (events.RechitCluster_llp_deltaR < .4) if signame in dataset else dummy,
		'dR_lmuon_cls > .8': (events.RechitCluster_leadmuon_deltaR > .8),
		'ME1112_veto': ((events.cscRechitClusterNRechitChamberPlus11 <= 0)&(events.cscRechitClusterNRechitChamberMinus11 <= 0)&
						(events.cscRechitClusterNRechitChamberPlus12 <= 0)&(events.cscRechitClusterNRechitChamberMinus12 <= 0)),
		're12_veto': (events.cscRechitCluster_match_RE12_0p4 == 0),
		'mb1_veto': (events.cscRechitCluster_match_MB1Seg_0p4 == 0),
		'rb1_veto': (events.cscRechitCluster_match_RB1_0p4 == 0),
		'muon_veto_pt < 20': (events.cscRechitClusterMuonVetoPt < 20),
		'-5 < cls_time < 12.5': ((events.cscRechitClusterTimeWeighted <= 12.5)&(events.cscRechitClusterTimeWeighted >= -5)),
		'|cls_timeSpread| < 20': (events.cscRechitClusterTimeSpreadWeightedAll <= 20),
		'|cls_eta| < 1.9': (abs(events.cscRechitClusterEta) < 1.9),
		'cut_based_ID': (((events.cscRechitClusterNStation10 >  1) & (abs(events.cscRechitClusterEta) < 1.9)) |
						 ((events.cscRechitClusterNStation10 == 1) & (abs(events.cscRechitClusterAvgStation10) == 4) & (abs(events.cscRechitClusterEta) < 1.8)) |
						 ((events.cscRechitClusterNStation10 == 1) & (abs(events.cscRechitClusterAvgStation10) == 3) & (abs(events.cscRechitClusterEta) < 1.5)) |
						 ((events.cscRechitClusterNStation10 == 1) & (abs(events.cscRechitClusterAvgStation10) == 2) & (abs(events.cscRechitClusterEta) < 1.7)) |
						 ((events.cscRechitClusterNStation10 == 1) & (abs(events.cscRechitClusterAvgStation10) == 1) & (abs(events.cscRechitClusterEta) < 1.0))),
		'cls_size > 130': (events.cscRechitClusterSize >= 130),
	}
```

But these are exactly the same... Maybe it's in the muon vetos in the very beginning?

These vetos are quite different from the two versions. This is maybe the reason for the difference?

I'm not sure how to go about systematically testing through this. Maybe I'll get some help from Christina on Monday.
