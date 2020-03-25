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

return bei_jia_er_hu_pan