/*Commonality Analysis for the small sample example.
/*單個變量R方.
REGRESSION/VARIABLES = motiv qual grade compr
/DEPENDENT compr/METHOD=ENTER motiv.

REGRESSION/VARIABLES = motiv qual grade compr
/DEPENDENT compr/METHOD=ENTER qual.

REGRESSION/VARIABLES = motiv qual grade compr
/DEPENDENT compr/METHOD=ENTER grade.

/*雙變量R方.
REGRESSION/VARIABLES = motiv qual grade compr
/DEPENDENT compr/METHOD=ENTER motiv qual.

REGRESSION /VARIABLES = motiv qual grade compr
/DEPENDENT compr/METHOD=ENTER motiv grade.

REGRESSION/VARIABLES = motiv qual grade compr
/DEPENDENT compr/METHOD=ENTER qual grade.

/*總R方.
REGRESSION/VARIABLES = motiv qual grade compr
/DEPENDENT compr/METHOD=ENTER motiv qual grade.

/*Unique: Effect(MOTIV)=R2(MOTIV QUAL GRADE)-R2(QUAL GRADE).
/*Common: Effects(QUAL GRADE)=R2(MOTIV QUAL)+R2(MOTIV GRADE)-R2(MOTIV)-R2(MOTIV QUAL GRADE).
/*Common: Effects(MOTIV QUAL GRADE)=R2(MOTIV QUAL GRADE)+R2(MOTIV)+R2(QUAL)+R2(GRADE)-R2(QUAL GRADE)-R2(MOTIV GRADE)-R2(QUAL MOTIV).
