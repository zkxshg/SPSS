/*Standard Multiple Regression.
REGRESSION
    /MISSING LISTWISE
    /STATISTICS COEFF OUTS R ANOVA
    /CRITERIA=PIN(.05) POUT(.10)
    /NOORIGIN
    /DEPENDENT compr
    /METHOD=ENTER motiv qual grade.  /*一次性放入*/


/*Sequential Multiple Regression.
REGRESSION
    /MISSING LISTWISE
    /STATISTICS COEFF OUTS R ANOVA CHANGE
    /CRITERIA=PIN(.05) POUT(.10)
    /NOORIGIN
    /DEPENDENT compr
    /METHOD=ENTER qual grade /METHOD=ENTER motiv. /*依序放入*/
