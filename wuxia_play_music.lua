-- 模式
debug = true

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
            -- 导入曲谱
            local dao_gu_peng_you = dofile("E:/lua/WuxiaPlayMusic/dao_gu_peng_you.lua")
            play(dao_gu_peng_you())
        end
    end
end

-------------------------- debug code ---------------------------------------
-- 使用时，需要注释以下代码
-----------------------------------------------------------------------------

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

-- function Sleep(time)
--     OutputLogMessage("sleep %.1f", time)
-- end

-- OnEvent("MOUSE_BUTTON_PRESSED", 5)
