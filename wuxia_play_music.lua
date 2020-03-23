-- 唱名键盘映射表
keyMap = {}

-- 低音
keyMap["_1"] = "a"
keyMap["_2"] = "s"
keyMap["_3"] = "d"
keyMap["_4"] = "f"
keyMap["_5"] = "g"
keyMap["_6"] = "h"
keyMap["_7"] = "j"

-- 中音
keyMap["1"] = "q"
keyMap["2"] = "w"
keyMap["3"] = "e"
keyMap["4"] = "r"
keyMap["5"] = "t"
keyMap["6"] = "y"
keyMap["7"] = "u"

-- 高音
keyMap["1_"] = "1"
keyMap["2_"] = "2"
keyMap["3_"] = "3"
keyMap["4_"] = "4"
keyMap["5_"] = "5"
keyMap["6_"] = "6"
keyMap["7_"] = "7"

-- 晴天
function qingtian()
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
end

function bei_jia_er_hu_pan()
    local source = {}

    -- 一分钟80拍
    source["bpm"] = 100
    -- beat_n一个小节有n拍，
    source["beat_n"] = 4
    -- beat_m分音符为一拍
    source["beat_m"] = 4

    -- 这首歌用到的和弦
    source["chords"] = {
        ["C"] = "1,3,5",
        ["Dm"] = "2,4,6",
        ["Em"] = "3,5,7",
        ["F"] = "4,6,1_",
        ["G"] = "5,7,2_",
        ["Am"] = "6,1_,3_",
        ["G7"] = "5,7,2_,4_",
        ["Dm7"] = "2,4,6,1_",
        ["CM7"] = "1,3,5,7",
        ["A"] = "6,1_,3_"
    }
    local chords = source["chords"]

    source["music"] = {}
    music = source["music"]

    -- rc:唱名,音高  note:代表时值，如4分音符，8分音符
    -- 第一小节
    chapter_1 = {
        {["rc"] = "_6", ["note"] = 8, ["chord"] = chords["Am"]},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4, ["chord"] = chords["Dm7"]},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4, ["chord"] = chords["G"]},
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "4", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4, ["chord"] = chords["CM7"]},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4, ["chord"] = chords["Am"]},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},

        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "4", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "4", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},

        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},

        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "6", ["note"] = 4},

        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "5", ["note"] = 8},
        
        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},

        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "4", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "6", ["note"] = 4},

        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "7", ["note"] = 4},

        {["rc"] = "3_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "4", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},

        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},

        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},

        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "6", ["note"] = 4},

        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "5", ["note"] = 8},
        
        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},

        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "4", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "6", ["note"] = 4},

        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "7", ["note"] = 4},

        {["rc"] = "3_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "4", ["note"] = 4},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},

        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},

        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},

        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "6", ["note"] = 4},

        {["rc"] = "4", ["note"] = 4},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},

        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "_1", ["note"] = 8},

        {["rc"] = "_6", ["note"] = 4},
    }
    table.insert(music, chapter_1)

    return source
end
-- 道姑朋友
function dao_gu_peng_you()
    local source = {}

    -- 一分钟80拍
    source["bpm"] = 80
    -- beat_n一个小节有n拍，
    source["beat_n"] = 4
    -- beat_m分音符为一拍
    source["beat_m"] = 4
    -- 这首歌用到的和弦
    source["chords"] = {
        ["C"] = "1,3,5",
        ["Dm"] = "2,4,6",
        ["Em"] = "3,5,7",
        ["F"] = "4,6,1",
        ["G"] = "5,7,2",
        ["Am"] = "6,1,3",
        ["G7"] = "5,7,2,4"
    }
    local chords = source["chords"]

    source["music"] = {}
    local music = source["music"]
    

    -- rc:唱名,音高  note:代表时值，如4分音符，8分音符
    -- 第一小节
    chapter_1 = {
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},

        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 4},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},

        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "_4", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "0", ["note"] = 4},

        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "-7", ["note"] = 4},
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},

        {["rc"] = "-6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "1", ["note"] = 4},

        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "_5", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},

        {["rc"] = "_6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        -- 前奏
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},

        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},

        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        -- 副歌
        -- 那年长街春意正浓
        {["rc"] = "0", ["note"] = 8, ["chord"] = chords["Dm"]},
        {["rc"] = "_1", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "-3", ["note"] = 16},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},

        -- 策马同游
        {["rc"] = "-6", ["note"] = 8, ["chord"] = chords["Dm"]},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},

        -- 烟雨如梦
        {["rc"] = "-1", ["note"] = 4, ["chord"] = chords["Am"]},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},

        {["rc"] = "3", ["note"] = 4, ["chord"] = chords["Em"]},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        -- 檐下躲雨
        {["rc"] = "0", ["note"] = 8, ["chord"] = chords["C"]},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "-3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},

        -- 深邃眼瞳
        {["rc"] = "-6", ["note"] = 8, ["chord"] = chords["F"]},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},

        -- 宛如华山夹着
        {["rc"] = "-1", ["note"] = 4, ["chord"] = chords["Am"]},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},

        -- 细雪的微风
        {["rc"] = "3", ["note"] = 4, ["chord"] = chords["Em"]},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "7", ["note"] = 4},

        -- 雨丝微凉
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},

        -- 暗香朦胧
        {["rc"] = "7", ["note"] = 4},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},

        -- 心头悸动
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},

        -- 翩若惊鸿
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "6_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 16},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},

        -- 是否情字
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        -- 写来都空洞
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "-1_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},

        -- 斟酌这奉送
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},

        -- 换个笑容，或沦为平庸
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "-2_", ["note"] = 8},
        {["rc"] = "5_", ["note"] = 16},
        {["rc"] = "4_", ["note"] = 16},

        -- 而你撑伞
        {["rc"] = "-3_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "3_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},

        -- 拥我入怀中
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "-1_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},

        -- 誓言多慎重
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},

        -- 柔情千种
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},

        -- 冰雪也消融
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "5_", ["note"] = 4},

        {["rc"] = "6_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        -- 间奏
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 16},
        {["rc"] = "-_7", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "-_6", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "-_6", ["note"] = 8},
        {["rc"] = "_5", ["note"] = 8},
        {["rc"] = "_2", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},

        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "-_6", ["note"] = 16},
        {["rc"] = "_7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "1", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        -- 后来谁家喜宴
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "_1", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "-3", ["note"] = 16},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},

        -- 佳人在侧
        {["rc"] = "-6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},

        -- 烛影摇红
        {["rc"] = "-1", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},

        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},

        -- 灯火缱绻
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "3", ["note"] = 16},
        {["rc"] = "-3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},

        -- 如画颜容
        {["rc"] = "-6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "4", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},

        -- 宛如豆蔻
        {["rc"] = "-1", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 16},
        {["rc"] = "1", ["note"] = 16},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "_6", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},

        -- 温柔的旧梦
        {["rc"] = "3", ["note"] = 4},
        {["rc"] = "5", ["note"] = 4},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "7", ["note"] = 4},

        -- 对面不识
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},

        -- 思绪翻涌
        {["rc"] = "7", ["note"] = 4},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},

        -- 白衣如旧
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},

        -- 我心惶恐
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "6_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 16},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},

        -- 也许我应
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "0", ["note"] = 4},
        {["rc"] = "3_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        -- 趁醉装疯
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "-1_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},

        -- 留一抹唇红
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},

        -- 轻歌慢诵
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "-2_", ["note"] = 8},
        {["rc"] = "5_", ["note"] = 16},
        {["rc"] = "4_", ["note"] = 16},

        -- 可我只能
        {["rc"] = "-3_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "3_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},

        -- 假笑扮从容
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "-1_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},

        -- 情深义重
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "5", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},

        -- 熟悉脸孔
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},

        -- 无动于衷
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "5_", ["note"] = 4},
        -- 山门外
        {["rc"] = "6_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "5_", ["note"] = 8},
        {["rc"] = "3_", ["note"] = 8},
        -- 雪拂过白衣
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "-2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        -- 负长剑
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},

        -- 试问江湖
        {["rc"] = "-2_", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "-2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        -- 何去何从
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "6_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        -- 像个笑话一样
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "-2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        -- 一厢情愿
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        -- 有始有终
        {["rc"] = "6", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        -- 哦~
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},
        {["rc"] = "-", ["note"] = 8},

        -- {["rc"] = "2_", ["note"] = 16},
        -- {["rc"] = "3_", ["note"] = 16},
        -- {["rc"] = "3_", ["note"] = 4},
        -- {["rc"] = "-", ["note"] = 4},
        -- {["rc"] = "3_", ["note"] = 16},
        -- {["rc"] = "2_", ["note"] = 16},
        -- {["rc"] = "3_", ["note"] = 8},
        -- 若你早已
        -- {["rc"] = "6_", ["note"] = 8},
        -- {["rc"] = "5_", ["note"] = 16},
        -- {["rc"] = "3_", ["note"] = 16},
        -- {["rc"] = "3_", ["note"] = 16},
        -- {["rc"] = "2_", ["note"] = 16},
        -- {["rc"] = "7_", ["note"] = 16},
        -- {["rc"] = "-7_", ["note"] = 16},
        -- 若你早与
        {["rc"] = "3_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 16},
         -- 他人两心同
         {["rc"] = "3_", ["note"] = 8},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "-1_", ["note"] = 16},
         {["rc"] = "3_", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 4},
         {["rc"] = "2_", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
 
         -- 错付了情衷
         {["rc"] = "2_", ["note"] = 8},
         {["rc"] = "5", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "-7", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 4},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
 
         -- 失魂落魄，你竟然心动
         {["rc"] = "1_", ["note"] = 8},
         {["rc"] = "4", ["note"] = 16},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "-6", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "7", ["note"] = 8},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 16},
         {["rc"] = "-2_", ["note"] = 8},
         {["rc"] = "5_", ["note"] = 16},
         {["rc"] = "4_", ["note"] = 16},
 
         -- 所幸经年
         {["rc"] = "-3_", ["note"] = 4},
         {["rc"] = "-", ["note"] = 4},
         {["rc"] = "-", ["note"] = 4},
         {["rc"] = "3_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 16},
 
         -- 漂浮红尘中
         {["rc"] = "3_", ["note"] = 8},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "-1_", ["note"] = 16},
         {["rc"] = "3_", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 4},
         {["rc"] = "2_", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
 
         -- 千疮百孔
         {["rc"] = "2_", ["note"] = 8},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "-7", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 4},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         -- 薄情为刃
         {["rc"] = "1_", ["note"] = 8},
         {["rc"] = "4", ["note"] = 16},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "-6", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "7", ["note"] = 8},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "5", ["note"] = 16},
         {["rc"] = "-5", ["note"] = 16},
         {["rc"] = "3", ["note"] = 8},
         {["rc"] = "6", ["note"] = 16},
         -- 又不会痛
         {["rc"] = "0", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "5_", ["note"] = 8},
         {["rc"] = "3_", ["note"] = 16},
         {["rc"] = "-3_", ["note"] = 16},
         {["rc"] = "-2_", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "3_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 16},
         -- 埋在风中
         {["rc"] = "3_", ["note"] = 8},
         {["rc"] = "6_", ["note"] = 16},
         {["rc"] = "3_", ["note"] = 16},
         {["rc"] = "-3_", ["note"] = 8},
         {["rc"] = "4_", ["note"] = 16},
         {["rc"] = "3_", ["note"] = 16},
         {["rc"] = "-3_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 8},
         {["rc"] = "2", ["note"] = 16},
         {["rc"] = "6_", ["note"] = 16},
         {["rc"] = "5_", ["note"] = 16},
         {["rc"] = "4_", ["note"] = 16},
         {["rc"] = "5_", ["note"] = 16},

         -- 以霜雪为幕
         {["rc"] = "5_", ["note"] = 8},
         {["rc"] = "4_", ["note"] = 16},
         {["rc"] = "4_", ["note"] = 16},
         {["rc"] = "-4_", ["note"] = 16},
         {["rc"] = "5_", ["note"] = 8},
         {["rc"] = "4_", ["note"] = 16},
         {["rc"] = "3_", ["note"] = 4},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
          -- 错在相逢
         {["rc"] = "1_", ["note"] = 8},
         {["rc"] = "4", ["note"] = 16},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "-6", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 8},
         {["rc"] = "-", ["note"] = 16},
         {["rc"] = "7", ["note"] = 4},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 16},
         {["rc"] = "-2_", ["note"] = 16},
         {["rc"] = "5_", ["note"] = 16},
         {["rc"] = "4_", ["note"] = 16},

          -- 孤身打马
         {["rc"] = "3_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 16},

        -- 南屏旧桥边过
         {["rc"] = "3_", ["note"] = 8},
         {["rc"] = "6", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "-1_", ["note"] = 16},
         {["rc"] = "3_", ["note"] = 8},
         {["rc"] = "4_", ["note"] = 16},
         {["rc"] = "2_", ["note"] = 4},
         {["rc"] = "2_", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
         {["rc"] = "7", ["note"] = 16},
         {["rc"] = "1_", ["note"] = 16},
        -- 来时雾蒙蒙
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "1_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        -- 伞下轻拥
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "4", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        -- 做了一场梦
        {["rc"] = "-6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "-2_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},

        -- 梦醒后
        {["rc"] = "0", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "-2_", ["note"] = 8},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        -- 粉身碎骨
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "0", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "2_", ["note"] = 16},
        {["rc"] = "3_", ["note"] = 8},
        {["rc"] = "5_", ["note"] = 8},
        -- 无踪
        {["rc"] = "6_", ["note"] = 8},
        {["rc"] = "0", ["note"] = 8},

        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},
        {["rc"] = "3", ["note"] = 8},
        {["rc"] = "1", ["note"] = 8},

        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "7", ["note"] = 16},
        {["rc"] = "-7", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "2_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},

        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 8},
        {["rc"] = "5", ["note"] = 8},
        {["rc"] = "2", ["note"] = 8},
        {["rc"] = "6", ["note"] = 8},

        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "6", ["note"] = 16},
        {["rc"] = "-6", ["note"] = 16},
        {["rc"] = "7", ["note"] = 8},
        {["rc"] = "-", ["note"] = 16},
        {["rc"] = "1_", ["note"] = 4},
        {["rc"] = "-", ["note"] = 4},
    }
    table.insert(music, chapter_1)
    return source
end

-- 字符串分割
function split(str,delimiter)
    local dLen = string.len(delimiter)
    if type(str) == "nil" then
        return
    end
    local newDeli = ''
    for i=1,dLen,1 do
        newDeli = newDeli .. "["..string.sub(delimiter,i,i).."]"
    end

    local locaStart,locaEnd = string.find(str,newDeli)
    local arr = {}
    local n = 1
    while locaStart ~= nil
    do
        if locaStart>0 then
            arr[n] = string.sub(str,1,locaStart-1)
            n = n + 1
        end

        str = string.sub(str,locaEnd+1,string.len(str))
        locaStart,locaEnd = string.find(str,newDeli)
    end
    if str ~= nil then
        arr[n] = str
    end
    return arr
end

-- 判断arr中是否存在某个元素
function contains(arr, element)
    if not table then
        return false 
    end 
          
    for k, v in pairs(arr) do
        if v.tableName ==b then
             return true
        end
    end
    return false
end

-- 从和弦中获取在键盘中对应的键位
function getKeysFromChord(chord)
    -- 得多和弦的组成音
    local chord_rcs = split(chord, ",")
    local keys = {}
    if(not chord_rcs) then
        return
    end
    for i, rc in ipairs(chord_rcs) do
        table.insert(keys, keyMap[rc])
    end
    return keys
end

-- 弹奏
function play(music)
	OutputLogMessage("play\n")
	local m = music["music"]
	for i, chapter in ipairs(m) do
		OutputLogMessage("...chapter_%d start...\n",i)
		-- roll_call唱名，note音符，如八分音符
        for i, note in ipairs(chapter) do
            -- 旋律音对应的键
            local key = keyMap[note["rc"]]
            -- 和弦
            local chord = note["chord"]
            -- 和弦对应的键位
            local keys = getKeysFromChord(chord)
			-- 时值
			local time = (60 * 1000 / music["bpm"]) / (note["note"] / music["beat_m"])
			if type(key) == "nil" then
                OutputLogMessage("rc:%s, key:nil, ", note["rc"], key)
				OutputLogMessage("time:%d, ", time)
                if type(chord) ~= "nil" then
                    OutputLogMessage("chord:%s ", chord)
                    PressAndReleaseKey(unpack(keys))
                end
                Sleep(time)
			else
				OutputLogMessage("rc:%s, key:%s, ", note["rc"], key)
                OutputLogMessage("time:%d, ", time)
                -- 如果存在和弦
                if type(chord) ~= "nil" then
                    OutputLogMessage("chord:%s ", chord)
                    -- 如果和弦音中已经存在旋律音，直接弹和弦音。否则，将旋律音加人
                    if(not contains(keys, key)) then
                        table.insert(keys, key)
                    end
                    PressKey(unpack(keys))
                    Sleep(time)
                    ReleaseKey(unpack(keys))
                else            
                    PressKey(key)
                    Sleep(time)
                    ReleaseKey(key)
                end

            end
            chord = nil
            OutputLogMessage("\n")
		end
		OutputLogMessage("...chapter_%d end...\n",i)
    end
end

function OnEvent(event, arg)
    OutputLogMessage("%s, %d\n", event, arg)
    if(event == "MOUSE_BUTTON_PRESSED") then
        if(arg == 5) then
            play(dao_gu_peng_you())
                    --play(qingtian)
        end
    end
end