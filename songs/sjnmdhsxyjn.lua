
-- 世界那么大还是想遇见你
    local source = {}

    -- 一分钟80拍
    source["bpm"] = 75
    -- beat_n一个小节有n拍，
    source["beat_n"] = 4
    -- beat_m分音符为一拍
    source["beat_m"] = 4

    local chords = source["chords"]

    source["music"] = {}
    music = source["music"]

    -- rc:唱名,音高  note:代表时值，如4分音符，8分音符
    -- 第一小节
    chapter_1 = {
        -- 1
        {["note"] = 8, ["chord"] = "1,3_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 8, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
    
        {["note"] = 8, ["chord"] = "_5,2_"},
        {["note"] = 8, ["chord"] = "2"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "7"},
        -- 2
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 8, ["chord"] = "6"},
        
        {["note"] = 16, ["chord"] = "_3,5_"},
        {["note"] = 8, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "3_"},
        -- 3
        {["note"] = 8, ["chord"] = "_4,1_"},
        {["note"] = 16, ["chord"] = "4"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 8, ["chord"] = "6,1_"},
        {["note"] = 16},
        {["note"] = 16, ["chord"] = "6,1_"},
        
        {["note"] = 16, ["chord"] = "1,5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "1_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        -- 4
        {["note"] = 4, ["chord"] = "2,2_"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "4_"},
        {["note"] = 16, ["chord"] = "6_"},
        {["note"] = 16, ["chord"] = "4_"},
    
        {["note"] = 16, ["chord"] = "_5,2_"},
        {["note"] = 8, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 8, ["chord"] = "2_"},
        {["note"] = 8, ["chord"] = "7"},
        -- 5
        {["note"] = 8, ["chord"] = "1,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
 
        {["note"] = 8, ["chord"] = "_5,3_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "1,1_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5,7"},
        -- 6
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},        
        {["note"] = 16, ["chord"] = "6,1_"},
    
        {["note"] = 8, ["chord"] = "_3,7"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 8},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "6"},       
        -- 7
        {["note"] = 8, ["chord"] = "_4,6"},
        {["note"] = 8, ["chord"] = "4"},
        {["note"] = 8, ["chord"] = "6"},
        {["note"] = 8, ["chord"] = "6"},
     
        {["note"] = 16, ["chord"] = "1,3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "3,5"},

        -- 8
        {["note"] = 8, ["chord"] = "2,3_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "3_"},

    
        {["note"] = 8, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 8, ["chord"] = "5,1_"},
        {["note"] = 8, ["chord"] = "5,7"},
        -- 9
        {["note"] = 8, ["chord"] = "1,5,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1,3_"},
        {["note"] = 16, ["chord"] = "1,3_"},
        {["note"] = 16, ["chord"] = "1,3_"},
        {["note"] = 16, ["chord"] = "1,3_"},
  
        {["note"] = 8, ["chord"] = "_5,5,2_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "7"},
        -- 10
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},

        {["note"] = 8, ["chord"] = "_3,5,7"},
        {["note"] = 16, ["chord"] = "5,7"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5"},

        -- 11
        {["note"] = 8, ["chord"] = "_4,6"},
        {["note"] = 8, ["chord"] = "4"},
        {["note"] = 8, ["chord"] = "6"},
        {["note"] = 8, ["chord"] = "6"},

        {["note"] = 8, ["chord"] = "1,3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 16},
        {["note"] = 16, ["chord"] = "5,1_"},

        -- 12
        {["note"] = 8, ["chord"] = "2,3_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "_5"},
        {["note"] = 8, ["chord"] = "5,2_"},
        {["note"] = 8, ["chord"] = "5,1_"},
        {["note"] = 8, ["chord"] = "5,7"},
        
        -- 13
        {["note"] = 8, ["chord"] = "1,5,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "_5,7,5_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 8, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "2_"},

        -- 14
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},

        {["note"] = 8, ["chord"] = "_3,3_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5,7"},

        -- 15
        {["note"] = 4, ["chord"] = "_4,6,1_"},
        {["note"] = 8, ["chord"] = "4"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 8, ["chord"] = "1,3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 16},
        {["note"] = 16, ["chord"] = "5,1_"},

        -- 16
        {["note"] = 8, ["chord"] = "2,3_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "_5"},
        {["note"] = 8, ["chord"] = "5,2_"},
        {["note"] = 8, ["chord"] = "5,1_"},
        {["note"] = 8, ["chord"] = "5,7"},

        -- 17
        {["note"] = 8, ["chord"] = "1,5,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "_5,7,5_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 8, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "2_"},

        -- 18
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},

        {["note"] = 8, ["chord"] = "_3,3_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5,7"},

        -- 19
        {["note"] = 8, ["chord"] = "_4,6,1_"},
        {["note"] = 8, ["chord"] = "4"},
        {["note"] = 8, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "6_"},
        {["note"] = 8, ["chord"] = "1,3_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 16},
        {["note"] = 8, ["chord"] = "5,1_"},
        {["note"] = 16, ["chord"] = "3_"},

        -- 20
        {["note"] = 4, ["chord"] = "2,2_"},
        {["note"] = 4, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "_5,2_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 16, ["chord"] = "2_"},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 8, ["chord"] = "7"},
        {["note"] = 8, ["chord"] = "2_"},

        -- 21
        {["note"] = 8, ["chord"] = "1,1_,3_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 8, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
    
        {["note"] = 8, ["chord"] = "_5,2_"},
        {["note"] = 8, ["chord"] = "2"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "7"},
        -- 22
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 8, ["chord"] = "6"},
        
        {["note"] = 16, ["chord"] = "_3,5_"},
        {["note"] = 8, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "3_"},
        -- 23
        {["note"] = 8, ["chord"] = "_4,1_"},
        {["note"] = 16, ["chord"] = "4"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 8, ["chord"] = "6,1_"},
        {["note"] = 16},
        {["note"] = 16, ["chord"] = "6,1_"},
        
        {["note"] = 16, ["chord"] = "1,5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "1_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        -- 24
        {["note"] = 4, ["chord"] = "2,2_"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "4_"},
        {["note"] = 16, ["chord"] = "6_"},
        {["note"] = 16, ["chord"] = "4_"},
    
        {["note"] = 16, ["chord"] = "_5,2_"},
        {["note"] = 8, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 8, ["chord"] = "2_"},
        {["note"] = 8, ["chord"] = "7"},

        -- 25
        {["note"] = 4, ["chord"] = "1,5,1"},
        -- {["note"] = 4},
        -- {["note"] = 4},
        -- {["note"] = 4},

        -- 5
        {["note"] = 8, ["chord"] = "1,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
 
        {["note"] = 8, ["chord"] = "_5,3_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "1,1_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5,7"},
        -- 6
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},        
        {["note"] = 16, ["chord"] = "6,1_"},
    
        {["note"] = 8, ["chord"] = "_3,7"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 8},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "6"},       
        -- 7
        {["note"] = 8, ["chord"] = "_4,6"},
        {["note"] = 8, ["chord"] = "4"},
        {["note"] = 8, ["chord"] = "6"},
        {["note"] = 8, ["chord"] = "6"},
     
        {["note"] = 16, ["chord"] = "1,3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "3,5"},

        -- 8
        {["note"] = 8, ["chord"] = "2,3_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "3_"},

    
        {["note"] = 8, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 8, ["chord"] = "5,1_"},
        {["note"] = 8, ["chord"] = "5,7"},
        -- 9
        {["note"] = 8, ["chord"] = "1,5,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1,3_"},
        {["note"] = 16, ["chord"] = "1,3_"},
        {["note"] = 16, ["chord"] = "1,3_"},
        {["note"] = 16, ["chord"] = "1,3_"},
  
        {["note"] = 8, ["chord"] = "_5,5,2_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "7"},
        -- 10
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "6,1_"},

        {["note"] = 8, ["chord"] = "_3,5,7"},
        {["note"] = 16, ["chord"] = "5,7"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5"},

        -- 11
        {["note"] = 8, ["chord"] = "_4,6"},
        {["note"] = 8, ["chord"] = "4"},
        {["note"] = 8, ["chord"] = "6"},
        {["note"] = 8, ["chord"] = "6"},

        {["note"] = 8, ["chord"] = "1,3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 16},
        {["note"] = 16, ["chord"] = "5,1_"},

        -- 12
        {["note"] = 8, ["chord"] = "2,3_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "_5"},
        {["note"] = 8, ["chord"] = "5,2_"},
        {["note"] = 8, ["chord"] = "5,1_"},
        {["note"] = 8, ["chord"] = "5,7"},
        
        -- 13
        {["note"] = 8, ["chord"] = "1,5,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "_5,7,5_"},
        {["note"] = 16, ["chord"] = "4_"},
        {["note"] = 16, ["chord"] = "4_"},
        {["note"] = 16, ["chord"] = "4_"},
        {["note"] = 8, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "2_"},

        -- 14
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},

        {["note"] = 8, ["chord"] = "_3,3_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5,7"},

        -- 15
        {["note"] = 4, ["chord"] = "_4,6,1_"},
        {["note"] = 8, ["chord"] = "4"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 8, ["chord"] = "1,3,5"},
        {["note"] = 16, ["chord"] = "3,5"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 16},
        {["note"] = 16, ["chord"] = "5,1_"},

        -- 16
        {["note"] = 8, ["chord"] = "2,3_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 8, ["chord"] = "6,2_"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "_5"},
        {["note"] = 8, ["chord"] = "5,2_"},
        {["note"] = 8, ["chord"] = "5,1_"},
        {["note"] = 8, ["chord"] = "5,7"},

        -- 17
        {["note"] = 8, ["chord"] = "1,5,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "1_,5_"},
        {["note"] = 16, ["chord"] = "_5,7,5_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 16, ["chord"] = "7,4_"},
        {["note"] = 8, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "2_"},

        -- 18
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},
        {["note"] = 16, ["chord"] = "1_,3_"},

        {["note"] = 8, ["chord"] = "_3,3_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5,7"},

        -- 19
        {["note"] = 8, ["chord"] = "_4,6,1_"},
        {["note"] = 8, ["chord"] = "4"},
        {["note"] = 8, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "6_"},
        {["note"] = 8, ["chord"] = "1,3_"},
        {["note"] = 16, ["chord"] = "5,2_"},
        {["note"] = 16, ["chord"] = "5,1_"},
        {["note"] = 16},
        {["note"] = 8, ["chord"] = "5,1_"},
        {["note"] = 16, ["chord"] = "3_"},

        -- 20
        {["note"] = 4, ["chord"] = "2,2_"},
        {["note"] = 4, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "_5,2_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 16, ["chord"] = "2_"},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 8, ["chord"] = "7"},
        {["note"] = 8, ["chord"] = "2_"},

        -- 21
        {["note"] = 8, ["chord"] = "1,1_,3_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 8, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
    
        {["note"] = 8, ["chord"] = "_5,2_"},
        {["note"] = 8, ["chord"] = "2"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "7"},
        -- 22
        {["note"] = 8, ["chord"] = "_6,1_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 8, ["chord"] = "6"},
        
        {["note"] = 16, ["chord"] = "_3,5_"},
        {["note"] = 8, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "3_"},
        -- 23
        {["note"] = 8, ["chord"] = "_4,1_"},
        {["note"] = 16, ["chord"] = "4"},
        {["note"] = 16, ["chord"] = "6,1_"},
        {["note"] = 8, ["chord"] = "6,1_"},
        {["note"] = 16},
        {["note"] = 16, ["chord"] = "6,1_"},
        
        {["note"] = 16, ["chord"] = "1,5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        {["note"] = 8, ["chord"] = "1_"},
        {["note"] = 16, ["chord"] = "5_"},
        {["note"] = 16, ["chord"] = "3_"},
        -- 24
        {["note"] = 4, ["chord"] = "2,2_"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "4_"},
        {["note"] = 16, ["chord"] = "6_"},
        {["note"] = 16, ["chord"] = "4_"},
    
        {["note"] = 16, ["chord"] = "_5,2_"},
        {["note"] = 8, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 8, ["chord"] = "2_"},
        {["note"] = 8, ["chord"] = "7"},

        -- 25
        {["note"] = 4, ["chord"] = "1,5,1"},
        -- {["note"] = 4},
        -- {["note"] = 4},
        -- {["note"] = 4},
    }
    table.insert(music, chapter_1)
    
    return source