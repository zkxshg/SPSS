MANOVA
    POST BY TREATMNT(1, 3) WITH PRE /*為TREATMENT指定區間*/
    /PRINT=SIGNIF(BRIEF)
    /ANALYSIS = POST  /*定義因變量*/
    /METHOD=SEQUENTIAL
    /DESIGN PRE TREATMNT PRE BY TREATMNT.
