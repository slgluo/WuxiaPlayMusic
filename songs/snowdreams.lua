-- snowdreams
local source = {}

-- 娑撯偓閸掑棝鎸?0閹?
source["bpm"] = 72
-- beat_n娑撯偓娑擃亜鐨懞鍌涙箒n閹峰稄绱?
source["beat_n"] = 4
-- beat_m閸掑棝鐓剁粭锔胯礋娑撯偓閹?
source["beat_m"] = 4

source["music"] = {}
music = source["music"]

-- rc:閸炲崬鎮?闂婃娊鐝? note:娴狅綀銆冮弮璺衡偓纭风礉婵?閸掑棝鐓剁粭锔肩礉8閸掑棝鐓剁粭?
-- 缁楊兛绔寸亸蹇氬Ν
chapter_1 = {
    -- 1
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1"},
    {["note"] = 8, ["chord"] = "2"},
    {["note"] = 4, ["chord"] = "3"},
    {["note"] = 8, ["chord"] = "2"},
    {["note"] = 8, ["chord"] = "1"},

    -- 2
    {["note"] = 8, ["chord"] = "_6"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1"},
    {["note"] = 8, ["chord"] = "5"},
    {["note"] = 8, ["chord"] = "4"},
    {["note"] = 8, ["chord"] = "3"},
    {["note"] = 8, ["chord"] = "2"},
    {["note"] = 8, ["chord"] = "1"},

    -- 3
    {["note"] = 8, ["chord"] = "_4"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1"},
    {["note"] = 8, ["chord"] = "2"},
    {["note"] = 4, ["chord"] = "3"},
    {["note"] = 8, ["chord"] = "2"},
    {["note"] = 8, ["chord"] = "1"},

    -- 4
    {["note"] = 2, ["chord"] = "_5,5"},
    {["note"] = 8},
    {["note"] = 8, ["chord"] = "5"},
    {["note"] = 8, ["chord"] = "1_"},
    {["note"] = 8, ["chord"] = "2_"},

    -- 5
    {["note"] = 8, ["chord"] = "_1,3_"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 4, ["chord"] = "_6,1_"},

    -- 6
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 4, ["chord"] = "_4,5_"},
    {["note"] = 8, ["chord"] = "_5,2_"},
    {["note"] = 8, ["chord"] = "2"},
    {["note"] = 4, ["chord"] = "5"},

    -- 7
    {["note"] = 8, ["chord"] = "_1,3_"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 4, ["chord"] = "6,1_"},

    -- 8
    {["note"] = 8, ["chord"] = "_4,6_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 4, ["chord"] = "_4,6_"},
    {["note"] = 8, ["chord"] = "_5,5_"},
    {["note"] = 8, ["chord"] = "_2"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "4_"},

    -- 9
    {["note"] = 8, ["chord"] = "_1,3_"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 4, ["chord"] = "_6,1_"},

    -- 10
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 4, ["chord"] = "_4,3_"},
    {["note"] = 8, ["chord"] = "_5,2_"},
    {["note"] = 8, ["chord"] = "_2"},
    {["note"] = 8, ["chord"] = "_5,7"},
    {["note"] = 8, ["chord"] = "6"},

    -- 11
    {["note"] = 8, ["chord"] = "_3,5"},
    {["note"] = 8, ["chord"] = "_7"},
    {["note"] = 4, ["chord"] = "_3,2_"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "6,2_"},
    {["note"] = 8, ["chord"] = "3_"},

    -- 12
    {["note"] = 8, ["chord"] = "_2,4_"},
    {["note"] = 8, ["chord"] = "_6,3_"},
    {["note"] = 8, ["chord"] = "2,2_"},
    {["note"] = 8, ["chord"] = "1_"},
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4,1_"},
    {["note"] = 8, ["chord"] = "2_"},

    -- 13
    {["note"] = 8, ["chord"] = "_1,1_"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 4, ["chord"] = "3"},
    {["note"] = 4, ["chord"] = "_5"},

    -- 14
    {["note"] = 8, ["chord"] = "_1,3_"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "_5,3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},

    -- 15
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4,3_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_5,2_"},
    {["note"] = 8, ["chord"] = "_2"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "_2"},

    -- 16
    {["note"] = 8, ["chord"] = "_1,3_"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "_5,3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},

    -- 17
    {["note"] = 8, ["chord"] = "_4,6_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4,6_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_5,5_"},
    {["note"] = 8, ["chord"] = "_2"},
    {["note"] = 8, ["chord"] = "5"},
    {["note"] = 8, ["chord"] = "_2,4_"},

    -- 18
    {["note"] = 8, ["chord"] = "_1,3_"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "_5,3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},
    -- 19
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4,3_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_5,2_"},
    {["note"] = 8, ["chord"] = "_2"},
    {["note"] = 8, ["chord"] = "_5,7"},
    {["note"] = 8, ["chord"] = "_2,6"},
    -- 20
    {["note"] = 8, ["chord"] = "_3,5"},
    {["note"] = 8, ["chord"] = "_7"},
    {["note"] = 8, ["chord"] = "_3,2_"},
    {["note"] = 8, ["chord"] = "_7"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3,3_"},
    -- 21
    {["note"] = 8, ["chord"] = "_2,4_"},
    {["note"] = 8, ["chord"] = "_6,3_"},
    {["note"] = 8, ["chord"] = "2,2_"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4,1_"},
    {["note"] = 8, ["chord"] = "_1,2_"},
    -- 22
    {["note"] = 8, ["chord"] = "_1,1_"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 4, ["chord"] = "1"},
    {["note"] = 4, ["chord"] = "_7"},
    -- 23
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4"},
    {["note"] = 8, ["chord"] = "1_"},
    {["note"] = 8, ["chord"] = "_5,7"},
    {["note"] = 8, ["chord"] = "_2,1_"},
    {["note"] = 8, ["chord"] = "_5,2_"},
    {["note"] = 8, ["chord"] = "7"},
    -- 24
    {["note"] = 8, ["chord"] = "_1,5"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "_1,1"},
    {["note"] = 8, ["chord"] = "2"},
    {["note"] = 8, ["chord"] = "3"},
    {["note"] = 8, ["chord"] = "5"},
    -- 25
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "4"},
    {["note"] = 8, ["chord"] = "1_"},
    {["note"] = 8, ["chord"] = "_5,7"},
    {["note"] = 8, ["chord"] = "_2,1_"},
    {["note"] = 8, ["chord"] = "_5,2_"},
    {["note"] = 8, ["chord"] = "5"},

    -- 26
    {["note"] = 8, ["chord"] = "_1,3_"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1,2_"},
    {["note"] = 8, ["chord"] = "_5,3_"},
    {["note"] = 4, ["chord"] = "_1,1_"},
    {["note"] = 4, ["chord"] = "_7"},

    -- 27
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "4"},
    {["note"] = 8, ["chord"] = "1_"},
    {["note"] = 8, ["chord"] = "_5,7"},
    {["note"] = 8, ["chord"] = "_2,1_"},
    {["note"] = 8, ["chord"] = "5,2_"},
    {["note"] = 8, ["chord"] = "7"},

    -- 28
    {["note"] = 8, ["chord"] = "_1,1_"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1,2_"},
    {["note"] = 8, ["chord"] = "3_"},
    {["note"] = 2, ["chord"] = "_4,_6,1,4_"},

    -- 29
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "4"},
    {["note"] = 8, ["chord"] = "1_"},
    {["note"] = 8, ["chord"] = "_5,7"},
    {["note"] = 8, ["chord"] = "_2,1_"},
    {["note"] = 8, ["chord"] = "5,2_"},
    {["note"] = 8, ["chord"] = "7"},

    -- 30
    {["note"] = 8, ["chord"] = "_1,1_"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "1"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 4, ["chord"] = "3"},
    {["note"] = 4, ["chord"] = "_5"},

    -- 31
    {["note"] = 8, ["chord"] = "1,3"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "_5,3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},

    -- 32
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4,3_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_5,2_"},
    {["note"] = 8, ["chord"] = "_2"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "_2"},

    -- 33
    {["note"] = 8, ["chord"] = "_1,3"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "_5,3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},

    -- 34
    {["note"] = 8, ["chord"] = "_4,6_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4,6_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_5,5_"},
    {["note"] = 8, ["chord"] = "_2"},
    {["note"] = 8, ["chord"] = "5"},
    {["note"] = 8, ["chord"] = "_2,4_"},

    -- 35
    {["note"] = 8, ["chord"] = "_1,3_"},
    {["note"] = 8, ["chord"] = "_5,4_"},
    {["note"] = 8, ["chord"] = "1,5_"},
    {["note"] = 8, ["chord"] = "_5,3_"},
    {["note"] = 8, ["chord"] = "_6,2_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},

    -- 36
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_4,3_"},
    {["note"] = 8, ["chord"] = "_1"},
    {["note"] = 8, ["chord"] = "_5,2_"},
    {["note"] = 8, ["chord"] = "_2"},
    {["note"] = 8, ["chord"] = "_5,7"},
    {["note"] = 8, ["chord"] = "_2,6"},

    -- 37
    {["note"] = 8, ["chord"] = "_3,5"},
    {["note"] = 8, ["chord"] = "_7"},
    {["note"] = 8, ["chord"] = "_3,2_"},
    {["note"] = 8, ["chord"] = "_7"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_3"},
    {["note"] = 8, ["chord"] = "_6,2"},
    {["note"] = 8, ["chord"] = "_3,3_"},

    -- 38
    {["note"] = 8, ["chord"] = "_2,4_"},
    {["note"] = 8, ["chord"] = "_6,3_"},
    {["note"] = 8, ["chord"] = "1,2_"},
    {["note"] = 8, ["chord"] = "_6,1_"},
    {["note"] = 8, ["chord"] = "_4,6"},
    {["note"] = 8, ["chord"] = "1"},
    {["note"] = 8, ["chord"] = "_4,2_"},
    {["note"] = 8, ["chord"] = "1,3_"},

    -- 39
    {["note"] = 8, ["chord"] = "_1,1_"},
    {["note"] = 8, ["chord"] = "_5"},
    {["note"] = 8, ["chord"] = "3"},
    {["note"] = 8, ["chord"] = "2"},
    {["note"] = 2, ["chord"] = "1"}

}

table.insert(music, chapter_1)

return source