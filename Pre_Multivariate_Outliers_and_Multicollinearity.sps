REGRESSION
    /MISSING LISTWISE /*LISTWISE detection*/
    /STATISTICS COEFF OUTS R ANOVA COLLIN TOL /*檢查共線性*/
    /CRITERIA=PIN(.05) POUT(.10)  /*置信係數*/
    /NOORIGIN /*非原點回歸*/
    /DEPENDENT stress
    /METHOD=ENTER timedrs phyheal menheal  /*全部放入*/
    /RESIDUALS=OUTLIERS(MAHAL). /*通過馬氏距離尋找多變量異常值*/
