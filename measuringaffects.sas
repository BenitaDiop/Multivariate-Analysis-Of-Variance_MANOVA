TITLE 'SNAPBEANS DATA';
DATA SNAPBEANS;
  SNAPBEANS +1;
  INFILE '/folders/myfolders/Multivariate/SNAPBEAN.DAT';
  INPUT SOWING VARIETY SNAPBEAN YIELD SLA TOTALYIELD AVGSLA;
PROC GLM;
  CLASS SOWING VARIETY;
  MODEL YIELD SLA TOTALYIELD AVGSLA = SOWING VARIETY SOWING*VARIETY;
  MANOVA H=SOWING VARIETY SOWING*VARIETY/PRINTE PRINTH;

Proc Print DATA=SNAPBEANS; Id SNAPBEANS; run;  

RUN;