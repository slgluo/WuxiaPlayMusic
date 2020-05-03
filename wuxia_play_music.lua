-- 模式
debug = true

-- 歌单
-- 要和歌谱文件名一样
songList = {
    "jiu_jiu_ba_shi_yi",
    "hei_ren_tai_guan",
    "hong_ri",
    "sjnmdhsxyjn",
    "ka_nong",
    "love_story",
    "qing_tian",
    "bei_jia_er_hu_pan",
    "dao_gu_peng_you",
}

-- 已加载的歌曲列表
loadedSongList = {}

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

----------------------- 键位 ---------------------------
--开始和停止的键，

-- 键位: 只能是numlock,scrolllock,capslock
modifierBtn = {
    -- 停止键
    ["stop"] = "scrolllock",
    -- 下一首
    ["next"] = "capslock"
}
-- 开始键，中键
mouseBtn = {
    ["start"] = 3
}
StartKey = 3


--------------------------------------------------------

-- 是否正在弹奏
isPlay = false

-- 脚本位置
scriptDir = "E:/WuxiaPlayMusic"
-- 歌单文件夹
songsDir = "/songs"
-- 歌单存储的路径
songListPath = scriptDir..songsDir

currentIndex = -1


----------------------------------------------------------------------------
--------------------------------工具函数------------------------------------
----------------------------------------------------------------------------
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

-- 获取表长度
function table_leng(t)
    local leng=0
    for k, v in pairs(t) do
      leng=leng+1
    end
    return leng;
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
-----------------------------------------------------------------------------


----------------------------------------------------------------------------
------------------------------ 弹奏相关函数----------------------------------
----------------------------------------------------------------------------
-- 开始弹奏
function play(music)
    isPlay = true
	local m = music["music"]
	for i, chapter in ipairs(m) do
		OutputLogMessage("...chapter_%d start...\n",i)
		-- roll_call唱名，note音符，如八分音符
        for i, note in ipairs(chapter) do
            if(IsKeyLockOn(modifierBtn.stop) == false) then
                if(IsKeyLockOn("scrolllock")) then
                    PressAndReleaseKey("scrolllock")
                end
                return "stop"
            elseif(IsKeyLockOn(modifierBtn.next) and isPlay == true) then
                -- 有时候关不掉，关掉再结束协程
                while(IsKeyLockOn(modifierBtn.next)) do
                    OutputLogMessage("modifierBtn.next is on\n")
                    PressAndReleaseKey(modifierBtn.next)
                    Sleep(50)
                end
                isPlay = false
                Sleep(2000)
                return "next"
            end
            -- 旋律音对应的键
            local key = keyMap[note["rc"]]
            -- 和弦
            local chord = note["chord"]
            -- 和弦对应的键位
            local keys = getKeysFromChord(chord)
			-- 时值
			local time = (60 * 1000 / music["bpm"]) / (note["note"] / music["beat_m"])
            if type(key) == "nil" then
                if type(note["rc"]) ~= "nil" then
                    OutputLogMessage("rc:%s, key:nil, ", note["rc"], key)
                end
				OutputLogMessage("time:%.1f, ", time)
                if type(chord) ~= "nil" then
                    OutputLogMessage("chord:%s ", chord)
                    PressAndReleaseKey(unpack(keys))
                end
                Sleep(time)
			else
				OutputLogMessage("rc:%s, key:%s, ", note["rc"], key)
                OutputLogMessage("time:%.1f, ", time)
                -- 如果存在和音，则加人和音
                if type(chord) ~= "nil" then
                    OutputLogMessage("chord:%s ", chord)
                    -- 如果和弦音中已经存在旋律音，直接弹和弦音。否则，将旋律音加人
                    table.insert(keys, key)
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
            OutputLogMessage("\n",i)
        end
		OutputLogMessage("...chapter_%d end...\n",i)
    end
    return "stop"
end

function start(song)
    if(type(song["song"]) == "nil") then
        OutputLogMessage("在songs文件夹中没有这首曲谱，或曲谱格式错误\n")
        next()
        return
    end
    OutputLogMessage("start %s\n", song["name"])

    local playThread = coroutine.create(play)
    local status, playStatus = coroutine.resume(playThread, song["song"])
    if(status) then
        if(playStatus == "stop") then
            isPlay = false
            currentIndex = -1
            if IsKeyLockOn(modifierBtn.stop) then
                PressAndReleaseKey(modifierBtn.stop)
            end
            OutputLogMessage("stop play\n")
        elseif(playStatus == "next") then
            next()
        elseif(playStatus == "prev") then
            prev()
        end
    end
end

-- 下一首
function next()
    OutputLogMessage("next\n")
    -- 第一次默认弹奏第一首
    local song = nil

    if(currentIndex == table_leng(loadedSongList)) then
        currentIndex = 1
    else    
        currentIndex = currentIndex + 1
    end
    song = loadSong(currentIndex)
    start(song)
end

-- 上一首
function prev()
    OutputLogMessage("prev\n")
    -- 第一次默认弹奏第一首
    local song = nil
    if(currentIndex == 1) then
        local songSize = table_leng(loadedSongList)
        currentIndex = songSize
    else
        currentIndex = currentIndex - 1
    end
    song = loadSong(currentIndex)
    start(song)
end


-- 加载歌曲
function loadSong(index)
    local songSize = table_leng(songList)
    if(index >= 1 and index <= songSize) then
        return loadedSongList[index]
    end
end

-- 加载歌单
function loadSongList()
    for index, songFileName in ipairs(songList) do
        local songPath = songListPath.."/"..songFileName..".lua"
        local getSong =  loadfile(songPath)
        if(type(getSong) == "nil") then
            OutputLogMessage("%s not found in \'songs\' folder or format error\n", songFileName)
        else
            OutputLogMessage("%s loaded\n", songFileName)
            table.insert(loadedSongList, {["name"] = songFileName, ["song"] = getSong()})
        end
    end
end

-------------------------------------------------------------------------------


------------------------------------------------------------------------------
-------------------------------框架代码----------------------------------------
-------------------------------------------------------------------------------

bEnable = false

function OnEvent(event, arg)
    OutputLogMessage("%s, %d\n", event, arg)
    if(event == "PROFILE_ACTIVATED" and arg == 0) then
        loadSongList()
    elseif(event == "MOUSE_BUTTON_PRESSED" and bEnable == false and IsKeyLockOn(modifierBtn.stop) == false) then
        bEnable = true
        if(arg == mouseBtn.start) then
            PressAndReleaseKey(modifierBtn.stop)
            Sleep(20)
            if(not isPlay) then
                if(currentIndex == -1) then
                    currentIndex = 1
                    start(loadSong(currentIndex))
                end
            end
        end
        bEnable = false
    end
end
-------------------------------------------------------------------------



---------------------- debug code ---------------------------------------
-- ---------------使用时，需要注释以下代码
-------------------------------------------------------------------------

-- function OutputLogMessage(formatMsg, ...)
--     print(string.format(formatMsg, ...))
-- end

-- function PressKey(...)
--     for i, v in ipairs({...}) do
--         OutputLogMessage("%s was pressed", v)
--     end
-- end

-- function ReleaseKey(...)
--     for i, v in ipairs({...}) do
--         OutputLogMessage("%s was released", v)
--     end
-- end

-- function PressAndReleaseKey(...)
--     for i, v in ipairs({...}) do
--         OutputLogMessage("%s was pressed and released", v)
--     end
-- end

-- function IsMouseButtonPressed(key)
--     OutputLogMessage("%s IsMouseButtonPressed", v)
--     return true
-- end

-- function IsKeyLockOn(key)
--     return false
-- end

-- function Sleep(time)
--     OutputLogMessage("sleep %.1f", time)
-- end

-- OnEvent("PROFILE_ACTIVATED", 0)
-- OnEvent("MOUSE_BUTTON_PRESSED", StartKey)
