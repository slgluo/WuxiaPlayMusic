function dao_gu_peng_you()
    local source = {}

    -- 一分钟80拍
    source["bpm"] = 75
    -- beat_n一个小节有n拍，
    source["beat_n"] = 4
    -- beat_m分音符为一拍
    source["beat_m"] = 4

    local chords = source["chords"]

    source["music"] = {}
    local music = source["music"]
    
    chapter = {
        -- 前奏
        {["note"] = 8, ["chord"] = "_6,6,1_"},
        {["note"] = 16, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 16},
        {["note"] = 16, ["chord"] = "1_"},
        {["note"] = 16, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "6"},
        {["note"] = 8, ["chord"] = "5"},
        {["note"] = 8, ["chord"] = "1"},

        {["note"] = 8, ["chord"] = "_4,6,1_"},
        {["note"] = 16, ["chord"] = "4"},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 16},
        {["note"] = 8, ["chord"] = "1_"},
        {["note"] = 16},
        {["note"] = 4, ["chord"] = "4,2_"},
        {["note"] = 4,},

        {["note"] = 8, ["chord"] = "_5,7"},
        {["note"] = 16, ["chord"] = "2"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 16, ["chord"] = "2"},
        {["note"] = 16, ["chord"] = "7"},
        {["note"] = 16, ["chord"] = "2"},
        {["note"] = 16, ["chord"] = "6"},
        {["note"] = 8},
        {["note"] = 8, ["chord"] = "5"},
        {["note"] = 8, ["chord"] = "2"},
        {["note"] = 8, ["chord"] = "6"},

        {["note"] = 8, ["chord"] = "_6,7"},
        {["note"] = 16, ["chord"] = "3"},
        {["note"] = 16, ["chord"] = "5"},
        {["note"] = 16, ["chord"] = "3"},
        {["note"] = 8, ["chord"] = "7"},
        {["note"] = 16},
        {["note"] = 4, ["chord"] = "3,1_"},
        {["note"] = 4,},

        { ["note"] = 8, ["chord"] = "_6,6,1_"},
        { ["note"] = 16, ["chord"] = "3"},
        { ["note"] = 16, ["chord"] = "7"},
        { ["note"] = 16},
        { ["note"] = 16, ["chord"] = "1_"},
        { ["note"] = 16, ["chord"] = "3"},
        { ["note"] = 16, ["chord"] = "7"},
        { ["note"] = 8},
        { ["note"] = 8, ["chord"] = "6"},
        { ["note"] = 8, ["chord"] = "5"},
        { ["note"] = 8, ["chord"] = "1"},

        { ["note"] = 8, ["chord"] = "_4,6,1_"},
        { ["note"] = 16, ["chord"] = "4"},
        { ["note"] = 16, ["chord"] = "7"},
        { ["note"] = 16},
        { ["note"] = 8, ["chord"] = "1_"},
        { ["note"] = 16},
        { ["note"] = 4, ["chord"] = "4,2_"},
        { ["note"] = 4,},

        { ["note"] = 8, ["chord"] = "_5,7"},
        { ["note"] = 16, ["chord"] = "2"},
        { ["note"] = 16, ["chord"] = "6"},
        { ["note"] = 16, ["chord"] = "2"},
        { ["note"] = 16, ["chord"] = "7"},
        { ["note"] = 16, ["chord"] = "2"},
        { ["note"] = 16, ["chord"] = "6"},
        { ["note"] = 8},
        { ["note"] = 8, ["chord"] = "5"},
        { ["note"] = 8, ["chord"] = "2"},
        { ["note"] = 8, ["chord"] = "6"},

        { ["note"] = 8, ["chord"] = "_6,7"},
        { ["note"] = 16, ["chord"] = "3"},
        { ["note"] = 16, ["chord"] = "5"},
        { ["note"] = 16, ["chord"] = "3"},
        { ["note"] = 8, ["chord"] = "7"},
        { ["note"] = 16},
        { ["note"] = 4, ["chord"] = "3,6"},
        { ["note"] = 4,},

        -- 副歌
        { ["note"] = 8, ["chord"] = "_6,,3,6"},
        { ["note"] = 8, ["chord"] = "1_"},
        { ["note"] = 8, ["chord"] = "7"},
        { ["note"] = 8, ["chord"] = "1_"},
        { ["note"] = 8, ["chord"] = "_6,3"},
        { ["note"] = 16, ["chord"] = "_6"},
        { ["note"] = 16, ["chord"] = "2"},
        { ["note"] = 8},
        { ["note"] = 8, ["chord"] = "6"},

        { ["note"] = 8, ["chord"] = "_4,,4,5"},
        { ["note"] = 8, ["chord"] = "1"},
        { ["note"] = 8, ["chord"] = "4"},
        { ["note"] = 8, ["chord"] = "1"},
        { ["note"] = 8, ["chord"] = "_4"},
        { ["note"] = 8, ["chord"] = "4"},
        { ["note"] = 8, ["chord"] = "1,3"},
        { ["note"] = 8, ["chord"] = "2"},

        { ["note"] = 4, ["chord"] = "1"},
        { ["note"] = 8},
        { ["note"] = 8, ["chord"] = "1"},
        { ["note"] = 4, ["chord"] = "_5,2"},
        { ["note"] = 8, ["chord"] = "_7"},
        { ["note"] = 8, ["chord"] = "5"},

        { ["note"] = 8, ["chord"] = "_6,3"},
        { ["note"] = 8, ["chord"] = "3"},
        { ["note"] = 8, ["chord"] = "5"},
        { ["note"] = 8, ["chord"] = "7"},
        { ["note"] = 4, ["chord"] = "1_"},
        { ["note"] = 4, ["chord"] = "_3,5,7"}, -- 这里的5应该是5#

        { ["note"] = 8, ["chord"] = "_6,6,7"},
        { ["note"] = 8, ["chord"] = "1_"},
        { ["note"] = 8, ["chord"] = "7"},
        { ["note"] = 8, ["chord"] = "5"},
        { ["note"] = 8, ["chord"] = "_5,3"},
        { ["note"] = 16, ["chord"] = "2"}, 
        { ["note"] = 16, ["chord"] = "3"}, 
        { ["note"] = 8, ["chord"] = "6"}, 

        { ["note"] = 8, ["chord"] = "_6,6,7"},
        { ["note"] = 8, ["chord"] = "1_"},
        { ["note"] = 8, ["chord"] = "7"},
        { ["note"] = 8, ["chord"] = "5"},
        { ["note"] = 8, ["chord"] = "_5,3"},
        { ["note"] = 16, ["chord"] = "2"}, 
        { ["note"] = 16, ["chord"] = "3"}, 
        { ["note"] = 8, ["chord"] = "6"}, 

        { ["note"] = 8, ["chord"] = "_4,,4,5"},
        { ["note"] = 8, ["chord"] = "1"},
        { ["note"] = 8, ["chord"] = "4"},
        { ["note"] = 8, ["chord"] = "1"},
        { ["note"] = 8, ["chord"] = "_4"},
        { ["note"] = 8, ["chord"] = "4"},
        { ["note"] = 8, ["chord"] = "1,3"},
        { ["note"] = 8, ["chord"] = "2"},
    }

    table.insert(music, chapter)

    return source
end

return dao_gu_peng_you