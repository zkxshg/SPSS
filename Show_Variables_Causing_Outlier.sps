/*用虛擬變量表示多變量異常值.
COMPUTE dummy = 0.
EXECUTE.
IF (subno=405) dummy = 1.
EXECUTE.
/*通過STEPWISE找出導致多變量異常值的變量.
REGRESSION
/MISSING LISTWISE
/STATISTICS COEFF OUTS
/CRITERIA=PIN(.05) POUT(.10)
/NOORIGIN
/DEPENDENT dummy
/METHOD=STEPWISE attdrug atthouse emplmnt timedrs.
