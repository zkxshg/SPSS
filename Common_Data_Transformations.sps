NEWX=SQRT(X)  /*Moderate positive skewness*/

NEWX=LG10(X)  /*Substantial positive skewness*/ 

NEWX=LG10(X + C)  /*Substantial positive skewness With zero*/ 

NEWX=1/X  /*Severe positive skewness*/ 

NEWX=1/(X + C)  /*L-shaped With zero*/

NEWX=SQRT(K – X)  /*Moderate negative skewness*/

NEWX=LG10(K – X)  /*Substantial negative skewness*/ 

NEWX=1/(K – X)  /*Severe negative skewness With zero / J-shaped*/ 
