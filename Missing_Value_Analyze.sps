MVA VARIABLES=銷量 品牌  /*選擇進行缺失值分析的屬性*/
  /TTEST PROB PERCENT=5     /*僅當缺失比例大於5%時進行單獨方差t檢驗*/
  /MPATTERN /*給出Missing Pattern*/
  /EM(TOLERANCE=0.001 CONVERGENCE=0.0001 ITERATIONS=25) /*設置EM算法的收斂條件*/
