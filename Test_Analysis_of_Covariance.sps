UNIANOVA
    timedrs BY menheal WITH phyheal /*因變量 BY 自變量 WITH 協變量*/
    /METHOD = SSTYPE(3)
    /INTERCEPT = INCLUDE
    /CRITERIA = ALPHA(.05)
    /DESIGN = menheal phyheal
