PPLOT
/VARIABLES = 銷量 /*選擇目標變量*/
/NOLOG  /*不進行log變換*/
/NOSTANDARDIZE  /*不進行標準化*/
/TYPE = P-P /*繪製P-P圖*/
/FRACTION = BLOM  /*指定通過BLOM變換估計秩*/
/TIES = MEAN  /*指定綁定值為平均秩*/
/DIST = NORMAL. /*正態分佈*/
