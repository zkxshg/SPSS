/*1 基于残差检查正态性/线性/同方差性.
/*residuals Scatterplot.
REGRESSION
    /MISSING LISTWISE
    /STATISTICS COEFF OUTS R ANOVA CHANGE
    /CRITERIA=PIN(.05) POUT(.10)
    /NOORIGIN
    /DEPENDENT timedrs
    /METHOD=ENTER phyheal menheal stress
    /SCATTERPLOT=(*ZRESID, *ZPRED). /*绘制殘差散點圖*/

/*Examining Distributions of Variables.
EXAMINE
    VARIABLES=timedrs phyheal menheal stress
    /PLOT BOXPLOT HISTOGRAM NPPLOT  /*绘制箱型圖/柱狀圖/正態Q-Q圖*/
    /COMPARE GROUP
    /STATISTICS DESCRIPTIVES EXTREME  /*設定顯示統計表格*/
    /CINTERVAL 95
    /MISSING LISTWISE
    /NOTOTAL.

/*Examining Distribution of Transformed.
FREQUENCIES
    VARIABLES=ltimedrs/ /*進行log變換*/
    /STATISTICS=STDDEV VARIANCE MINIMUM MAXIMUM MEAN SKEWNESS SESKEW KURTOSIS SEKURT
    /HISTOGRAM NORMAL
    /ORDER = ANALYSIS.

/*2 檢查異常值.
/*Multivariate Outliers and Collinearity Diagnostics.
REGRESSION
    /MISSING LISTWISE
    /STATISTICS COEFF OUTS R COLLIN TOL
    /CRITERIA=PIN(.05) POUT(.10)
    /NOORIGIN
    /DEPENDENT timedrs
    /METHOD=ENTER phyheal menheal stress
    /SCATTERPLOT=(*ZRESID,*ZPRED)
    /RESIDUALS=outliers(mahal).

/*3 標準多變量回歸.
REGRESSION
    /DESCRIPTIVES MEAN STDDEV CORR SIG N
    /MISSING LISTWISE
    /STATISTICS COEFF OUTS CI(95) R ANOVA ZPP
    /CRITERIA=PIN(.05) POUT(.10)
    /NOORIGIN
    /DEPENDENT timedrs
    /METHOD=ENTER phyheal menheal stress.

/*4 順序回歸.
REGRESSION
    /MISSING LISTWISE
    /STATISTICS COEFF OUTS CI(95) R ANOVA ZPP
    /CRITERIA=PIN(.05) POUT(.10)
    /NOORIGIN
    /DEPENDENT timedrs
    /METHOD=ENTER phyheal /METHOD=ENTER stress/METHOD=ENTER menheal.  /*依順序放入*/

