# 0.645 Tesla magnet
This dataset was collected using a 0.645 Tesla magnet at 27.5 MHz. It contains a total of 161 T2 relaxation curves probed from 12 pure hydrocarbon and 17 jet fuel samples. The derived cetane number (DCN) of all samples is provided. 

## Data

All of the T2 relaxation data is provided in excel files. The first two sheets of the "trainingData" and "validationData" excel files contain hydrocarbon and jet fuel T2 data, where the first column is time (in seconds) and the remaining columns are T2 curves (in volts). The third sheet of the "trainingData" excel file summarizes the DCN of the samples. The code example.m shows how to read the data and plot relaxation curves using MATLAB. 

Table 1: The 12 hydrocarbon and 17 jet fuel samples used to generate datasets. Reported DCN values are subject to small uncertainties (approximately $\pm1$). $^\ast$ Reprobed for validation data. $^\dagger$ Test samples.
<p align="center">
<img src="../../images/dataTable.JPG" alt="Hydrocarbon and jet fuel samples used for dataset generation." width="400"/> <br> 
</p>

<p align="center">
<img src="../../images/t2Curves.jpg" alt="Select hydrocarbon and jet T2 relaxation curves." width="800"/> <br> 
</p>
Figure 1: Example pure hydrocarbon and jet fuel T2 curves.

