[Prev](/B-parking/Thur_May_25_2023.md)

Working on this [repo](https://github.com/ucsd-hep-ex/B-ParkingLLPs/tree/dtIDinvestigation) to optimize cut-based ID for DTs.

I need to investigate these three regions:
* Signal Region (SR)
* Out of Time Region (OOT)
* and Test region

I need to investigate them before and after the addition of the `dtCutBasedID`.

### DT cut-based ID def

| Condition Number | dtRechitCluster NStation10 | abs dtRechitCluster AvgStation10 | abs dtRechit ClusterEta | Does it pass? |
| ---------------- | ------------------------- | --------------------------------- | ------------------------ | ------------- |
| A                | > 1                       | -                                 | < 1.8                    | Yes           |
| B1               | == 1                      | == 1                              | < 1.8                    | Yes           |
| B2               | == 1                      | == 2                              | < 1.6                    | Yes           |
| B3               | == 1                      | == 3                              | < 1.7                    | Yes           |
| B4               | == 1                      | == 4                              | < 1.1                    | Yes           |
| Else             | -                         | -                                 | -                        | No            |

It is defined as such in `C`.

```C
bool analyzer_objects::askDoesPassID_dt(int index){                                                                                       // loggit
    if (                                                                                                                                  // loggit
        (dtRechitClusterNStation10[index] > 1 &&                                                fabs(dtRechitClusterEta[index])<1.8) ||   // loggit
        (dtRechitClusterNStation10[index]== 1 && fabs(dtRechitClusterAvgStation10[index])==1 && fabs(dtRechitClusterEta[index])<1.8) ||   // loggit
        (dtRechitClusterNStation10[index]== 1 && fabs(dtRechitClusterAvgStation10[index])==2 && fabs(dtRechitClusterEta[index])<1.6) ||   // loggit
        (dtRechitClusterNStation10[index]== 1 && fabs(dtRechitClusterAvgStation10[index])==3 && fabs(dtRechitClusterEta[index])<1.7) ||   // loggit
        (dtRechitClusterNStation10[index]== 1 && fabs(dtRechitClusterAvgStation10[index])==4 && fabs(dtRechitClusterEta[index])<1.1) )    // loggit
        return true;                                                                                                                      // loggit
    else return false;                                                                                                                    // loggit
}
```

### Plot Checklist

| Signal    | SR  | OOT | Test |
| --------- | --- | --- | ---- |
| Before ID | ✅  | ✅  | ✅   |
| After ID  | ✅  | ✅  | ✅   |

| Background | SR  | OOT | Test |
| ---------- | --- | --- | ---- |
| Before ID  | ✅  | ✅  | ✅   |
| After ID   | ✅  | ✅  | ✅   |

### Plots

#### Summary plot

![](/B-parking/dt_cutbased_ID_investigation/summary_plot.png)

It looks like both the signals are identical across all signal regions. 
Same for bkg.
Not sure if this is good.
Am concerned there's a bug in the code.

#### Prototype plots

* Signal
	* Before ID
		* SR 
			* ![](/B-parking/dt_cutbased_ID_investigation/signal/dtRechitClusterSize_SR_predtID.jpeg)
		* OOT
			* ![](/B-parking/dt_cutbased_ID_investigation/signal/dtRechitClusterSize_OOT_predtID.jpeg)
		* Test
			* ![](/B-parking/dt_cutbased_ID_investigation/signal/dtRechitClusterSize_Test_predtID.jpeg)
	* After ID
		* SR 
			* ![](/B-parking/dt_cutbased_ID_investigation/signal/dtRechitClusterSize_SR_postdtID.jpeg)
		* OOT
			* ![](/B-parking/dt_cutbased_ID_investigation/signal/dtRechitClusterSize_OOT_postdtID.jpeg)
		* Test
			* ![](/B-parking/dt_cutbased_ID_investigation/signal/dtRechitClusterSize_Test_postdtID.jpeg)
* Background
	* Before ID
		* SR
			* ![](/B-parking/dt_cutbased_ID_investigation/background/dtRechitClusterSize_SR_predtID.jpeg)
		* OOT
			* ![](/B-parking/dt_cutbased_ID_investigation/background/dtRechitClusterSize_OOT_predtID.jpeg)
		* Test
			* ![](/B-parking/dt_cutbased_ID_investigation/background/dtRechitClusterSize_test_predtID.jpeg)
	* After ID
		* SR
			* ![](/B-parking/dt_cutbased_ID_investigation/background/dtRechitClusterSize_SR_postdtID.jpeg)
		* OOT
			* ![](/B-parking/dt_cutbased_ID_investigation/background/dtRechitClusterSize_OOT_postdtID.jpeg)
		* Test
			* ![](/B-parking/dt_cutbased_ID_investigation/background/dtRechitClusterSize_test_postdtID.jpeg)

# Why are we missing events in OOT?

Let's investigate.

✅ condition is present
❌ not present
⚠️ present but negated

**CSC Conditions**

| Condition | Test | OOT | SR |
|---|---|---|---|
| askDoesPassClusterSize_csc(j) | ✅ | ✅ | ✅ |
| askDoesPassOverlapMuon_csc(j) | ✅ | ✅ | ✅ |
| askDoesOverlapGenLLP_csc(j) | ❌ | ✅ | ✅ |
| askDoesPassME1112Veto_csc(j) | ✅ | ✅ | ✅ |
| askDoesPassMB1Veto_csc(j) | ✅ | ✅ | ✅ |
| askDoesPassRB1Veto_csc(j) | ✅ | ❌ | ❌ |
| askDoesPassMuonVeto_csc(j) | ✅ | ✅ | ✅ |
| askDoesPassClusterTime_csc(j) | ⚠️ | ⚠️ | ✅ |
| askDoesPassClusterTimeSpread_csc(j) | ✅ | ✅ | ✅ |
| askDoesPassClusterEta_csc(j) | ✅ | ✅ | ✅ |
| askDoesPassID_csc(j) | ⚠️ | ✅ | ✅ |

**DT Conditions**

| Condition | Test | OOT | SR |
|---|---|---|---|
| askDoesPassClusterSize_dt(j) | ❌ | ✅ | ✅ |
| askDoesPassOverlapMuon_dt(j) | ✅ | ✅ | ✅ |
| askDoesOverlapGenMuon_dt(j) | ❌ | ✅ | ✅ |
| askDoesPassRPCMatching_dt(j) | ✅ | ✅ | ✅ |
| askDoesPassRPCTimeCut_dt(j) | ✅ | ⚠️ | ✅ |
| askDoesPassMB1Adjacent_dt(j) | ✅ | ✅ | ✅ |
| askDoesPassMB1Veto_dt(j) | ✅ | ✅ | ✅ |
| askDoesPassMuonVeto_dt(j) | ✅ | ✅ | ✅ |
| askDoesPassID_dt(j) | ✅ | ✅ | ✅ |

