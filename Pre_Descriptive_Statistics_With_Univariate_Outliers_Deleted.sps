/*篩選phyheal小於等於3的值.
USE ALL.
COMPUTE filter_$=(phyheal > 3).
VARIABLE LABEL filter_$ "phyheal > 3 (FILTER)".
VALUE LABELS filter_$ 0 "Not Selected" 1 "Selected".
FORMAT filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
/*替換缺失值為10.
RECODE
    phyheal (SYSMIS=10).
EXECUTE.
/*描述性統計處理後的數據.
FREQUENCIES
    VARIABLES=phyheal /FORMAT=NOTABLE
    /STATISTICS=STDDEV VARIANCE MINIMUM MAXIMUM MEAN SKEWNESS SESKEW KURTOSIS
    SEKURT
    /HISTOGRAM NORMAL
    /ORDER= ANALYSIS.
