-- 晴天
    local source = {}

    -- 一分钟80拍
    source["bpm"] = 70
    -- beat_n一个小节有n拍，
    source["beat_n"] = 4
    -- beat_m分音符为一拍
    source["beat_m"] = 4

    source["music"] = {}
    music = source["music"]

    -- rc:唱名,音高  note:代表时值，如4分音符，8分音符
    -- 第一小节
    chapter_1 = {
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8}
    }

    chapter_2 = {
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "_5", ["note"] = 8},
    }

    chapter_3 = {
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
    }


    chapter_4 = {
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},
    }

    chapter_5 = {
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "2", ["note"] = 16},
    }

    chapter_6 = {
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "2", ["note"] = 16},
    }

    chapter_7 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 4},
    }
    chapter_8 = {
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "2", ["note"] = 16},
    }
    chapter_9 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 16},
    }
    chapter_10 = {
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "_1", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
    }
    chapter_10 = {
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "_1", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
    }
    chapter_11 = {
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
    }
    chapter_12 = {
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
    }
    chapter_13 = {
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},		
    }
    chapter_14 = {
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},		
        {["rc"] = "1", ["note"] = 8},
    }
    chapter_15 = {
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8}
    }
    chapter_16 = {
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
    }
    chapter_17 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
    }
    chapter_18 = {
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
    }
    chapter_19 = {
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
    }
    chapter_20 = {
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
    }
    chapter_21 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
    }
    chapter_22 = {
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
    }
    chapter_23 = {
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},	
    }
    chapter_24 = {
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "7", ["note"] = 4},
    }
    chapter_25 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},	
    }
    chapter_26 = {
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},	
    }
    chapter_27 = {
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
    }
    chapter_28 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
    }
    chapter_29 = {
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 8},
    }
    chapter_30 = {
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
    }
    chapter_31 = {
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
    }
    chapter_32 = {
        {["rc"] = "_7", ["note"] = 16},
    }
    chapter_33 = {
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "_1", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
    }
    chapter_34 = {
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "_1", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
    }
    chapter_35 = {
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
    }
    chapter_36 = {
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
    }
    chapter_37 = {
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},		
    }
    chapter_38 = {
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},		
        {["rc"] = "1", ["note"] = 8},
    }
    chapter_39 = {
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},		
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
    }
    chapter_40 = {
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
    }
    chapter_41 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
    }
    chapter_42 = {
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
    }
    chapter_43 = {
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
    }
    chapter_44 = {
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
    }
    chapter_45 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
    }
    chapter_46 = {
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
    }
    chapter_47 = {
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},	
    }
    chapter_48 = {
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "7", ["note"] = 4},
    }
    chapter_49 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},	
    }
    chapter_50 = {
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},	
    }
    chapter_51 = {
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
    }
    chapter_52 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
    }
    chapter_53 = {
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 8},
    }
    chapter_54 = {
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
    }
    chapter_55 = {
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
    }



    table.insert(music, chapter_1)
    table.insert(music, chapter_2)
    table.insert(music, chapter_3)
    table.insert(music, chapter_4)
    table.insert(music, chapter_5)
    table.insert(music, chapter_6)
    table.insert(music, chapter_7)
    table.insert(music, chapter_8)
    table.insert(music, chapter_9)
    table.insert(music, chapter_10)
    table.insert(music, chapter_11)
    table.insert(music, chapter_12)
    table.insert(music, chapter_13)
    table.insert(music, chapter_14)
    table.insert(music, chapter_15)
    table.insert(music, chapter_16)
    table.insert(music, chapter_17)
    table.insert(music, chapter_18)
    table.insert(music, chapter_19)
    table.insert(music, chapter_20)
    table.insert(music, chapter_21)
    table.insert(music, chapter_22)
    table.insert(music, chapter_23)
    table.insert(music, chapter_24)
    table.insert(music, chapter_25)
    table.insert(music, chapter_26)
    table.insert(music, chapter_27)
    table.insert(music, chapter_28)
    table.insert(music, chapter_29)
    table.insert(music, chapter_30)
    table.insert(music, chapter_31)
    table.insert(music, chapter_32)
    table.insert(music, chapter_33)
    table.insert(music, chapter_34)
    table.insert(music, chapter_35)
    table.insert(music, chapter_36)
    table.insert(music, chapter_37)
    table.insert(music, chapter_38)
    table.insert(music, chapter_39)
    table.insert(music, chapter_40)
    table.insert(music, chapter_41)
    table.insert(music, chapter_42)
    table.insert(music, chapter_43)
    table.insert(music, chapter_44)
    table.insert(music, chapter_45)
    table.insert(music, chapter_46)
    table.insert(music, chapter_47)
    table.insert(music, chapter_48)
    table.insert(music, chapter_49)
    table.insert(music, chapter_50)
    table.insert(music, chapter_51)
    table.insert(music, chapter_52)
    table.insert(music, chapter_53)
    table.insert(music, chapter_54)
    table.insert(music, chapter_55)
    
    return source