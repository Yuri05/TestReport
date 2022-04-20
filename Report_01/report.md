



# UGT DDI Inhibition Qualification 




| Version                         | x.x-OSPy.y                                                   |
| ------------------------------- | ------------------------------------------------------------ |
| Qualification Plan Release      | https://github.com/Open-Systems-Pharmacology/Qualification-DDI-UGT/releases/tag/v1.2 |
| OSP Version                     | y.y                                                          |
| Qualification Framework Version | z.z                                                          |





This qualification report is filed at:

https://github.com/Open-Systems-Pharmacology/OSP-Qualification-Reports



# Table of Contents

 * [1 Introduction](#introduction)
   * [1.1 Objective](#objective)
   * [1.2 UGT DDI Network](#ugt-ddi-network)
     * [1.2.1 Atazanavir - Raltegravir DDI](#undefined-section-4)
     * [1.2.2 Mefenamic acid - Dapagliflozin DDI](#undefined-section-5)
 * [2 Qualification of Use Case UGT-mediated DDI](#qualification-of-use-case-ugt-mediated-ddi)
   * [2.1 Mechanism](#qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-9)
     * [2.1.1 Reversible Inhibition](#qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-10)
   * [2.2 Perpetrator](#qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-18)
     * [2.2.1 Atazanavir](#qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-19)
     * [2.2.2 Mefenamic Acid](#qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-27)
   * [2.3 Victim](#qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-35)
     * [2.3.1 Raltegravir](#qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-36)
     * [2.3.2 Dapagliflozin](#qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-44)
 * [3 Concentration-Time Profiles](#ct-profiles)
   * [3.1 Atazanavir - Raltegravir DDI](#atazanavir-raltegravir-ddi)
   * [3.2 Mefenamic acid - Dapagliflozin DDI](#mefenamic-acid-dapagliflozin-ddi)
 * [4 References](#references)
 * [5 Appendix](#appendix)
   * [5.1 Open Systems Pharmacology Suite (OSPS) Introduction](#osps-introduction)
   * [5.2 Mathematical Implementation of Drug-Drug Interactions](#mathematical-implementation-of-ddi)
   * [5.3 Automatic (re)-qualification workflow](#requalification-workflow)




<a id="introduction"></a>


# 1 Introduction


[Test invalid link](#invalid-internal-link)
[Test valid chapter link 1](#11-objective)
[Test valid chapter link 2 case insensitive](#11-Objective)



<a id="objective"></a>


## 1.1 Objective


This **qualification report** evaluates for the PBPK platform **PK-Sim** (as part of the open systems pharmacology (OSP) suite) the ability to perform simulations with the intended purpose to predict UGT1A1- and UGT1A9-mediated drug-drug interactions (**DDI**)

To demonstrate the level of confidence the predictive performance of the platform for this indented purpose is assessed particularly for **inhibition** of UGT1A1 and UGT1A9 by selected perpetrators on sensitive substrates . All PBPK models represent whole-body PBPK models, which allow dynamic DDI simulations in organs expressing UGT1A1 or UGT1A9, respectively. 

The respective *qualification plan* to produce this *qualification report* is transparently documented and provided open-source (www.open-systems-pharmacology.org). The same applies for all presented PBPK models including *evaluation reports* on model building and evaluation of each model.

*Evaluation reports* including descriptions on model building and detailed evaluations of the included models are documented separately (see [Section 1.2](#ugt-ddi-network)).

Please refer to the [Appendix](#appendix) to learn more details:

- An overview over the Open Systems Pharmacology Suite is given in chapter [Open Systems Pharmacology Suite (OSPS) Introduction](#osps-introduction)

- [Mathematical Implementation](#mathematical-implementation-of-ddi) shows the implementation of the underlying mathematical equations for drug-drug interactions in the OSP suite.

- A detailed general description of the performed qualification workflow (*qualification plan*, *qualification report*, etc.) can be found in chapter [Automatic (re)-qualification workflow](#requalification-workflow).





<a id="ugt-ddi-network"></a>


## 1.2 UGT DDI Network


The following perpetrator compounds were selected:

- **Atazanavir** (UGT1A1 inhibitor)
  Model snapshot and evaluation plan (*release* **v1.1**): https://github.com/Open-Systems-Pharmacology/Atazanavir-Model/releases/tag/v1.1
  
- **Mefenamic acid** (UGT1A9 inhibitor)
  Model snapshot and evaluation plan (*release* **v1.1**): https://github.com/Open-Systems-Pharmacology/Mefenamic-acid-Model/releases/tag/v1.1


The following sensitive substrates as victim drugs were selected:

- **Raltegravir** (UGT1A1 substrate)
  Model snapshot and evaluation plan (*release* **v1.2**): https://github.com/Open-Systems-Pharmacology/Raltegravir-Model/releases/tag/v1.2
  
- **Dapagliflozin** (UGT1A9 substrate):
  Model snapshot and evaluation plan (*release* **v1.1**): https://github.com/Open-Systems-Pharmacology/Dapagliflozin-Model/releases/tag/v1.1



The published DDI studies between the respective perpetrators and victim drugs were simulated and compared to observed data. The following sections give an overview of the clinical studies being part of this qualification report. The respective data identifier (DataID) refers to the **ID** of the dataset in the [OSP PK database](https://github.com/Open-Systems-Pharmacology/Database-for-observed-data).





<a id="undefined-section-4"></a>


### 1.2.1 Atazanavir - Raltegravir DDI


The release of the snapshot containing the respective simulations can be found here:
https://github.com/Open-Systems-Pharmacology/Atazanavir-Raltegravir-DDI/releases/tag/v1.1.

The atazanavir / raltegravir interaction was evaluated using four clinical DDI studies ([Iwamoto 2008](#references), [Krishna 2008](#references), [Neely 2010](#references), [Zhu 2010](#references)).



| DataID | Enzyme | Perpetrator / victim     | Study design                                                 | Clinical study                 |
| ------ | ------ | ------------------------ | ------------------------------------------------------------ | ------------------------------ |
| 571    | UGT1A1 | Atazanavir / raltegravir | Atazanavir: 400 mg once daily dosing<br />Raltegravir: 100 mg single dose on day 7 simultaneous with the 7th dose of atazanavir | [Iwamoto 2008](#references)  |
| 575    | UGT1A1 | Atazanavir / raltegravir | Atazanavir: 400 mg once daily dosing<br />Raltegravir: 1200 mg single dose on day 7 simultaneous with the 7th dose of atazanavir | [Krishna 2008,](#references) |
| 573    | UGT1A1 | Atazanavir / raltegravir | Atazanavir: 400 mg once daily dosing<br />Raltegravir: 400 mg once daily dosing (control phase 400 mg twice daily)<br />DDI assessment on day 8 | [Neely 2010](#references)    |
| 579    | UGT1A1 | Atazanavir / raltegravir | Atazanavir: 300 mg twice daily dosing<br />Raltegravir: 400 mg twice daily dosing <br />DDI assessment on day 27 | [Zhu 2010](#references)      |






<a id="undefined-section-5"></a>


### 1.2.2 Mefenamic acid - Dapagliflozin DDI


The release of the snapshot containing the respective simulations can be found here:
https://github.com/Open-Systems-Pharmacology/Mefenamic_acid-Dapagliflozin-DDI/releases/tag/v1.1.

The mefenamic acid / dapagliflozin interaction was evaluated using 1 clinical DDI study ([Kasichayanula 2013](#references)).



| DataID | Enzyme | Perpetrator / victim           | Study design                                                 | Clinical study                      |
| ------ | ------ | ------------------------------ | ------------------------------------------------------------ | ----------------------------------- |
| 642    | UGT1A9 | Mefenamic acid / dapagliflozin | Mefenamic acid: 500 mg loading dose, followed by 8 doses of 250 mg mefenamic acid every 6 hours<br />Dapagliflozin: 10 mg single dose on day 2 simultaneous with the 5th dose of mefenamic acid (24 hours after the first mefenamic acid dose) | [Kasichayanula 2013](#references) |






<a id="qualification-of-use-case-ugt-mediated-ddi"></a>


# 2 Qualification of Use Case UGT-mediated DDI


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_ddi_ratio_plot_AUC_predictedVsObserved.png)


Figure 1: UGT1A1 and UGT1A9 Inhibition DDI.  Predicted vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_ddi_ratio_plot_AUC_residualsVsObserved.png)


Figure 2: UGT1A1 and UGT1A9 Inhibition DDI.  Predicted/Observed vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_ddi_ratio_plot_CMAX_predictedVsObserved.png)


Figure 3: UGT1A1 and UGT1A9 Inhibition DDI.  Predicted vs. Observed CMAX Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_ddi_ratio_plot_CMAX_residualsVsObserved.png)


Figure 4: UGT1A1 and UGT1A9 Inhibition DDI.  Predicted/Observed vs. Observed CMAX Ratio.


Table 1: GMFE for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1


|PK parameter |GMFE |
|:------------|:----|
|AUC          |1.11 |
|CMAX         |1.12 |


Table 2: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1 AUC


|AUC                          |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |5      |-        |
|Points within Guest *et al.* |5      |100       |
|Points within 2 fold         |5      |100       |


Table 3: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1 CMAX


|CMAX                         |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |5      |-        |
|Points within Guest *et al.* |4      |80        |
|Points within 2 fold         |5      |100       |


|DataID |Perpetrator                                                                        |Victim            |Predicted AUC Ratio |Observed AUC Ratio |Pred/Obs AUC Ratio |Predicted CMAX Ratio |Observed CMAX Ratio |Pred/Obs CMAX Ratio |Reference           |
|:------|:----------------------------------------------------------------------------------|:-----------------|:-------------------|:------------------|:------------------|:--------------------|:-------------------|:-------------------|:-------------------|
|571    |Atazanavir, 400 mg, PO, MD OD (9 days)                                             |Raltegravir, PO   |1.87                |1.72               |1.09               |1.57                 |1.53                |1.03                |Iwamoto 2008        |
|573    |Atazanavir, 400 mg, PO, MD OD (8 days)                                             |Raltegravir, PO   |1.83                |1.72               |1.06               |1.21                 |1.37                |0.88                |Neely 2010          |
|575    |Atazanavir, 400 mg, PO, MD OD (9 days)                                             |Raltegravir, PO   |1.80                |1.67               |1.08               |1.52                 |1.16                |1.31                |Krishna 2016        |
|579    |Atazanavir, 400 mg, PO, MD BID (14 days)                                           |Raltegravir, PO   |1.94                |1.54               |1.27               |1.59                 |1.39                |1.14                |Zhu 2010            |
|642    |Mefenamic Acid, 500 / 250 mg, PO, MD QID (4 days)  with first dose ad loading dose |Dapagliflozin, PO |1.41                |1.51               |0.93               |1.16                 |1.13                |1.02                |Kasichayanula 2013a |


<a id="qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-9"></a>

## 2.1 Mechanism


<a id="qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-10"></a>

### 2.1.1 Reversible Inhibition


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_mechanism_Reversible_Inhibition_ddi_ratio_plot_AUC_predictedVsObserved.png)


Figure 5: UGT1A1 and UGT1A9 Inhibition DDI. Mechanism: Reversible Inhibition. Predicted vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_mechanism_Reversible_Inhibition_ddi_ratio_plot_AUC_residualsVsObserved.png)


Figure 6: UGT1A1 and UGT1A9 Inhibition DDI. Mechanism: Reversible Inhibition. Predicted/Observed vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_mechanism_Reversible_Inhibition_ddi_ratio_plot_CMAX_predictedVsObserved.png)


Figure 7: UGT1A1 and UGT1A9 Inhibition DDI. Mechanism: Reversible Inhibition. Predicted vs. Observed CMAX Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_mechanism_Reversible_Inhibition_ddi_ratio_plot_CMAX_residualsVsObserved.png)


Figure 8: UGT1A1 and UGT1A9 Inhibition DDI. Mechanism: Reversible Inhibition. Predicted/Observed vs. Observed CMAX Ratio.


Table 4: GMFE for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-mechanism-Reversible Inhibition


|PK parameter |GMFE |
|:------------|:----|
|AUC          |1.11 |
|CMAX         |1.12 |


Table 5: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-mechanism-Reversible Inhibition AUC


|AUC                          |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |5      |-        |
|Points within Guest *et al.* |5      |100       |
|Points within 2 fold         |5      |100       |


Table 6: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-mechanism-Reversible Inhibition CMAX


|CMAX                         |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |5      |-        |
|Points within Guest *et al.* |4      |80        |
|Points within 2 fold         |5      |100       |


<a id="qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-18"></a>

## 2.2 Perpetrator


<a id="qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-19"></a>

### 2.2.1 Atazanavir


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_perpetrator_Atazanavir_ddi_ratio_plot_AUC_predictedVsObserved.png)


Figure 9: UGT1A1 and UGT1A9 Inhibition DDI. Perpetrator: Atazanavir. Predicted vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_perpetrator_Atazanavir_ddi_ratio_plot_AUC_residualsVsObserved.png)


Figure 10: UGT1A1 and UGT1A9 Inhibition DDI. Perpetrator: Atazanavir. Predicted/Observed vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_perpetrator_Atazanavir_ddi_ratio_plot_CMAX_predictedVsObserved.png)


Figure 11: UGT1A1 and UGT1A9 Inhibition DDI. Perpetrator: Atazanavir. Predicted vs. Observed CMAX Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_perpetrator_Atazanavir_ddi_ratio_plot_CMAX_residualsVsObserved.png)


Figure 12: UGT1A1 and UGT1A9 Inhibition DDI. Perpetrator: Atazanavir. Predicted/Observed vs. Observed CMAX Ratio.


Table 7: GMFE for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-perpetrator-Atazanavir


|PK parameter |GMFE |
|:------------|:----|
|AUC          |1.12 |
|CMAX         |1.15 |


Table 8: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-perpetrator-Atazanavir AUC


|AUC                          |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |4      |-        |
|Points within Guest *et al.* |4      |100       |
|Points within 2 fold         |4      |100       |


Table 9: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-perpetrator-Atazanavir CMAX


|CMAX                         |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |4      |-        |
|Points within Guest *et al.* |3      |75        |
|Points within 2 fold         |4      |100       |


<a id="qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-27"></a>

### 2.2.2 Mefenamic Acid


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_perpetrator_Mefenamic_Acid_ddi_ratio_plot_AUC_predictedVsObserved.png)


Figure 13: UGT1A1 and UGT1A9 Inhibition DDI. Perpetrator: Mefenamic Acid. Predicted vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_perpetrator_Mefenamic_Acid_ddi_ratio_plot_AUC_residualsVsObserved.png)


Figure 14: UGT1A1 and UGT1A9 Inhibition DDI. Perpetrator: Mefenamic Acid. Predicted/Observed vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_perpetrator_Mefenamic_Acid_ddi_ratio_plot_CMAX_predictedVsObserved.png)


Figure 15: UGT1A1 and UGT1A9 Inhibition DDI. Perpetrator: Mefenamic Acid. Predicted vs. Observed CMAX Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_perpetrator_Mefenamic_Acid_ddi_ratio_plot_CMAX_residualsVsObserved.png)


Figure 16: UGT1A1 and UGT1A9 Inhibition DDI. Perpetrator: Mefenamic Acid. Predicted/Observed vs. Observed CMAX Ratio.


Table 10: GMFE for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-perpetrator-Mefenamic Acid


|PK parameter |GMFE |
|:------------|:----|
|AUC          |1.07 |
|CMAX         |1.02 |


Table 11: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-perpetrator-Mefenamic Acid AUC


|AUC                          |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |1      |-        |
|Points within Guest *et al.* |1      |100       |
|Points within 2 fold         |1      |100       |


Table 12: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-perpetrator-Mefenamic Acid CMAX


|CMAX                         |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |1      |-        |
|Points within Guest *et al.* |1      |100       |
|Points within 2 fold         |1      |100       |


<a id="qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-35"></a>

## 2.3 Victim


<a id="qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-36"></a>

### 2.3.1 Raltegravir


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_victim_Raltegravir_ddi_ratio_plot_AUC_predictedVsObserved.png)


Figure 17: UGT1A1 and UGT1A9 Inhibition DDI. Victim: Raltegravir. Predicted vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_victim_Raltegravir_ddi_ratio_plot_AUC_residualsVsObserved.png)


Figure 18: UGT1A1 and UGT1A9 Inhibition DDI. Victim: Raltegravir. Predicted/Observed vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_victim_Raltegravir_ddi_ratio_plot_CMAX_predictedVsObserved.png)


Figure 19: UGT1A1 and UGT1A9 Inhibition DDI. Victim: Raltegravir. Predicted vs. Observed CMAX Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_victim_Raltegravir_ddi_ratio_plot_CMAX_residualsVsObserved.png)


Figure 20: UGT1A1 and UGT1A9 Inhibition DDI. Victim: Raltegravir. Predicted/Observed vs. Observed CMAX Ratio.


Table 13: GMFE for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-victim-Raltegravir


|PK parameter |GMFE |
|:------------|:----|
|AUC          |1.12 |
|CMAX         |1.15 |


Table 14: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-victim-Raltegravir AUC


|AUC                          |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |4      |-        |
|Points within Guest *et al.* |4      |100       |
|Points within 2 fold         |4      |100       |


Table 15: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-victim-Raltegravir CMAX


|CMAX                         |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |4      |-        |
|Points within Guest *et al.* |3      |75        |
|Points within 2 fold         |4      |100       |


<a id="qualification-of-use-case-ugt-mediated-ddi-ddi-subunit-44"></a>

### 2.3.2 Dapagliflozin


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_victim_Dapagliflozin_ddi_ratio_plot_AUC_predictedVsObserved.png)


Figure 21: UGT1A1 and UGT1A9 Inhibition DDI. Victim: Dapagliflozin. Predicted vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_victim_Dapagliflozin_ddi_ratio_plot_AUC_residualsVsObserved.png)


Figure 22: UGT1A1 and UGT1A9 Inhibition DDI. Victim: Dapagliflozin. Predicted/Observed vs. Observed AUC Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_victim_Dapagliflozin_ddi_ratio_plot_CMAX_predictedVsObserved.png)


Figure 23: UGT1A1 and UGT1A9 Inhibition DDI. Victim: Dapagliflozin. Predicted vs. Observed CMAX Ratio.


![](images/006_section_qualification-of-use-case-ugt-mediated-ddi/DDIRatio_1_victim_Dapagliflozin_ddi_ratio_plot_CMAX_residualsVsObserved.png)


Figure 24: UGT1A1 and UGT1A9 Inhibition DDI. Victim: Dapagliflozin. Predicted/Observed vs. Observed CMAX Ratio.


Table 16: GMFE for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-victim-Dapagliflozin


|PK parameter |GMFE |
|:------------|:----|
|AUC          |1.07 |
|CMAX         |1.02 |


Table 17: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-victim-Dapagliflozin AUC


|AUC                          |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |1      |-        |
|Points within Guest *et al.* |1      |100       |
|Points within 2 fold         |1      |100       |


Table 18: Summary table for UGT1A1 and UGT1A9 Inhibition DDI DDIRatio-1-victim-Dapagliflozin CMAX


|CMAX                         |Number |Ratio [%] |
|:----------------------------|:------|:---------|
|Points total                 |1      |-        |
|Points within Guest *et al.* |1      |100       |
|Points within 2 fold         |1      |100       |





<a id="ct-profiles"></a>


# 3 Concentration-Time Profiles


The following section shows the correlations between observed and model-predicted AUC and C<sub>max</sub> ratios, respectively.

Specifically, the PBPK model performance for the PK parameters **AUC ratio (AUCR)** and **C<sub>max</sub> ratio (CMAXR)** is assessed via:

- predicted (*Pred*) vs. observed (*Obs*) plots

- *Pred*/*Obs* vs. *Obs* plots

- geometric mean fold error (GMFE):
  
  ![GMFE equation](images/GFME_equation.PNG)
  
- number of AUCR and CMAXR falling within 2-fold error range and within the limits as suggested by [Guest et al. 2011](#references)
  
- detailed table of results for each study

  

In the plots,

- the dotted lines denote 0.50–2.00 (2-fold) criterion,

- the solid lines denote the limits as suggested by [Guest et al. 2011](#references),

- the bold solid line denotes the unity line,

- each color represents one combination of drugs,

- squares represent studies with intravenous administration of the victim drug and circles represent studies with oral administration of the victim drug.



***






<a id="atazanavir-raltegravir-ddi"></a>


## 3.1 Atazanavir - Raltegravir DDI


![](images/007_section_ct-profiles/008_section_atazanavir-raltegravir-ddi/comparison_time_profile_Iwamoto_2008_1.png)


Figure 25: Iwamoto 2008


![](images/007_section_ct-profiles/008_section_atazanavir-raltegravir-ddi/comparison_time_profile_Krishna_2016_2.png)


Figure 26: Krishna 2016


![](images/007_section_ct-profiles/008_section_atazanavir-raltegravir-ddi/comparison_time_profile_Neely_2010_3.png)


Figure 27: Neely 2010


![](images/007_section_ct-profiles/008_section_atazanavir-raltegravir-ddi/comparison_time_profile_Zhu_2010_4.png)


Figure 28: Zhu 2010





<a id="mefenamic-acid-dapagliflozin-ddi"></a>


## 3.2 Mefenamic acid - Dapagliflozin DDI


![](images/007_section_ct-profiles/009_section_mefenamic-acid-dapagliflozin-ddi/comparison_time_profile_Kasichayanula_2013a_5.png)


Figure 29: Kasichayanula 2013a





<a id="references"></a>


# 4 References


**Guest 2011** Guest EJ, Aarons L, Houston JB, Rostami-Hodjegan A, Galetin A. Critique of the twofold measure of prediction success for ratios: application for the assessment of drug-drug
interactions. Drug metabolism and disposition: the biological fate of chemicals. 2011;39(2):170-3

**Iwamoto 2008** Iwamoto M, Wenning LA, Mistry GC, Petry AS, Liou SY, Ghosh K, et al. Atazanavir modestly increases plasma levels of raltegravir in healthy subjects. Clinical infectious diseases :
an official publication of the Infectious Diseases Society of America. 2008;47(1):137-40.

**Kasichayanula 2013** Kasichayanula S, Liu X, Griffen SC, Lacreta FP, Boulton DW. Effects of
rifampin and mefenamic acid on the pharmacokinetics and pharmacodynamics of dapagliflozin.
Diabetes, obesity & metabolism. 2013;15(3):280-3. 	

**Krishna 2008** Krishna R, East L, Larson P, Valiathan C, Deschamps K, Luk JA, et al. Atazanavir
increases the plasma concentrations of 1200 mg raltegravir dose. Biopharmaceutics & drug
disposition. 2016;37(9):533-41.

**Neely 2010** Neely M, Decosterd L, Fayet A, Lee JS, Margol A, Kanani M, et al. Pharmacokinetics and pharmacogenomics of once-daily raltegravir and atazanavir in healthy volunteers.
Antimicrobial agents and chemotherapy. 2010;54(11):4619-25.

**Zhu 2010** Zhu L, Butterton J, Persson A, Stonier M, Comisar W, Panebianco D, et al.
Pharmacokinetics and safety of twice-daily atazanavir 300 mg and raltegravir 400 mg in healthy
individuals. Antiviral therapy. 2010;15(8):1107-14.






<a id="appendix"></a>


# 5 Appendix





<a id="osps-introduction"></a>


## 5.1 Open Systems Pharmacology Suite (OSPS) Introduction


Open Systems Pharmacology Suite (OSP suite) is a tool for PBPK modeling and simulation of drugs in laboratory animals and humans. PK-Sim® and MoBi® are part of the OSP suite [[1](#references-for-osps-introduction)].  PK-Sim® is based on a generic PBPK-model with 18 organs and tissues. One of the main assumptions is that all compartments are well-stirred. Represented organs/tissues include arterial and venous blood, adipose tissue (separable adipose, excluding yellow marrow), brain, lung, bone (including yellow marrow), gonads, heart, kidneys, large intestine, liver, muscle, portal vein, pancreas, skin, small intestine, spleen and stomach, as shown in **Figure 1**.

Each organ consists of four sub-compartments namely the plasma, blood cells (which together build the vascular space), interstitial space, and cellular space. Distribution between the plasma and blood cells as well as between the interstitial and cellular compartments can be permeability-limited. In the brain, the permeation barrier is located between the vascular and the interstitial space. PK-Sim® estimates model parameters (intestinal permeability [[2](#references-for-osps-introduction)] organ partition coefficients (tissue-to-plasma partition coefficients) [[3,4](#references-for-osps-introduction)], and permeabilities) from physico-chemical properties of compounds (molecular weight, pKa, acid/base properties) and the composition of each tissue compartment (lipids, water and proteins). Partition coefficients can be calculated using a variety of methods available in PK-Sim®, for example the internal PK-Sim® method [[3,4](#references-for-osps-introduction)] or that of Rodgers and Rowland [[5-7](#references-for-osps-introduction)]. 

Physiological databases included in the software incorporate the dependencies of organ composition, organ weights, organ blood flows and gastrointestinal parameters (gastrointestinal length, radius of each section, intestinal surface area, gastrointestinal transit times, and pH in different intestinal segments [[2](#references-for-osps-introduction)]), with the user-defined body weight and height and ethnicity of the individual [[8](#references-for-osps-introduction)]. Thereby, PK Sim® allows generating realistic virtual populations. For a detailed description of the PBPK model structure implemented in PK Sim®, see Willmann et al. [[2,4,8,9](#references-for-osps-introduction)] or the OSP Suite homepage (<https://docs.open-systems-pharmacology.org/mechanistic-modeling-of-pharmacokinetics-and-dynamics/modeling-concepts>).


**Figure** **1: Structure of the Whole Body PBPK Model integrated in PK-Sim®**

![generic PBPK model](images/PK-Sim_PBPK_generic_model_scheme.png)




## References for OSPS introduction

[1] [www.open-systems-pharmacology.org](http://www.open-systems-pharmacology.org/)

[2] [Willmann S, Schmitt W, Keldenich J, Lippert J, Dressman JB. A physiological model for the estimation of the fraction dose absorbed in humans.J Med Chem. 2004 Jul 29;47(16):4022-31.](https://www.ncbi.nlm.nih.gov/pubmed/15267240)

[3] [Haerter MW, K.J., Schmitt W, *Estimation of physicochemical and ADME parameters.* , in *Handbook of Combinatorial Chemistry: Drugs, Catalysts, Materials*, H.W. Nicolaou KC HR, Editor. 2002, Wiley VCH Verlag GmbH: Weinheim, Germany. p. 743-60.](https://onlinelibrary.wiley.com/doi/pdf/10.1002/3527603034.ch26)

[4] [Willmann S, Lippert J, Schmitt W. From physicochemistry to absorption and distribution: predictive mechanistic modelling and computational tools. Expert Opin Drug Metab Toxicol. 2005 Jun;1(1):159-68.](https://www.ncbi.nlm.nih.gov/pubmed/16922658)

[5] [Rodgers, T, D. Leahy, and M. Rowland. Physiologically based pharmacokinetic modeling 1: predicting the tissue distribution of moderate-to-strong bases. J Pharm Sci. 2005 Jun;94(6):1259-76.](https://www.ncbi.nlm.nih.gov/pubmed/15858854)

[6] [Rodgers T, Rowland M. Physiologically based pharmacokinetic modelling 2: predicting the tissue distribution of acids, very weak bases, neutrals and zwitterions. J Pharm Sci. 2006 Jun;95(6):1238-57.](https://www.ncbi.nlm.nih.gov/pubmed/16639716)

[7] [Rodgers T, Rowland M. Mechanistic approaches to volume of distribution predictions: understanding the processes. Pharm Res. 2007 May;24(5):918-33.](https://www.ncbi.nlm.nih.gov/pubmed/17372687)

[8] [Willmann S, Höhn K, Edginton A, Sevestre M, Solodenko J, Weiss W, Lippert J, Schmitt W. Development of a physiology-based whole-body population model for assessing the influence of individual variability on the pharmacokinetics of drugs. J Pharmacokinet Pharmacodyn. 2007 Jun;34(3):401-31.](https://www.ncbi.nlm.nih.gov/pubmed/17431751)

[9] [Willmann S, Lippert J, Sevestre M, Solodenko J, Fois F, Schmitt W. PK-Sim®: a physiologically based pharmacokinetic ‘whole-body’ model. Biosilico 2003.1(4):121-24.](https://www.sciencedirect.com/science/article/pii/S1478538203023424?via%3Dihub)






<a id="mathematical-implementation-of-ddi"></a>


## 5.2 Mathematical Implementation of Drug-Drug Interactions




**DDI modeling: Competitive inhibition** 

A detailed representation of the mathematical implementation of competitive enzyme inhibition  can be found in the OSP manual [here](https://docs.open-systems-pharmacology.org/working-with-pk-sim/pk-sim-documentation/pk-sim-compounds-defining-inhibition-induction-processes#competitive-inhibition-simple-setting-with-one-inhibitor).



**DDI modeling: Mechanism-based inhibition**

A detailed representation of the mathematical implementation of mechanism-based enzyme inhibition  can be found in the OSP manual [here](https://docs.open-systems-pharmacology.org/working-with-pk-sim/pk-sim-documentation/pk-sim-compounds-defining-inhibition-induction-processes#irreversible-inhibition).



**DDI modeling: Induction**

A detailed representation of the mathematical implementation of enzyme induction can be found in the OSP manual [here](https://docs.open-systems-pharmacology.org/working-with-pk-sim/pk-sim-documentation/pk-sim-compounds-defining-inhibition-induction-processes#enzyme-induction).






<a id="requalification-workflow"></a>


## 5.3 Automatic (re)-qualification workflow


[Open Systems Pharmacology](http://www.open-systems-pharmacology.org) provides a dynamic landscape of model repositories and a database of observed clinical data. Additionally, a technical framework to assess confidence of a specific intended use has been developed (qualification runner and reporting engine). This framework allows for an automatic (re)-qualification workflow of the OSP suite, comprising the following steps (**Figure 1**):

- PBPK model development and verification with observed data,

- Qualification plan generation,

- Qualification plan execution,

- Qualification report generation.

  

**Figure 1: OSP suite automatic (re)-qualification workflow**
![OSP qualification workflow](images/OSP_Qualification_Workflow_1.png)



In a first step, the respective qualification scenario is saved in a special qualification repository on [GitHub](https://github.com/Open-Systems-Pharmacology/). This qualification scenario repository contains a detailed qualification plan that links and combines respective models and data to address the use case that shall be qualified. Therefore, the qualification plan consists of: 

- PK-Sim project files,
- Additional model building steps (if applicable),
- Description of potential cross-dependencies between PK-Sim project files (if applicable),
- Observed data (needed for model development and verification),
- Qualification scenario description text modules
- Detailed report settings to describe the generation of charts and qualification measures. 

PK-Sim projects, observed data sets, and qualification scenario text modules are deposited in distinct repositories and are referenced by the qualification plan (**Figure 2**).



**Figure 2: Qualification scenario repository landscape on GitHub**
![OSP qualification workflow detail](images/OSP_Qualification_Workflow_2.png)



In a second step the [qualification runner](https://github.com/Open-Systems-Pharmacology/QualificationRunner) processes the qualification plan, i.e. all project parts are exported and prepared for the [reporting engine](https://github.com/Open-Systems-Pharmacology/Reporting-Engine). The reporting engine provides a validated environment (currently implemented in MATLAB®, a transfer to R is in development) for model execution and finally generates the qualification report. This report contains the evaluation of the individual PBPK models with observed data (i.e. standard goodness of fit plots, visual predictive checks) and a comprehensive qualification of the specific use case assessing the predictive performance of the OSP suite by means of a predefined set of qualification measures and charts. 

The automated execution of the described workflow can be triggered to assess re-qualification in case new data, changes in model structure or parameterization, or new OSP suite releases arise.






