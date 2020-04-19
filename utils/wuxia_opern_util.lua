-------------------------------------------------------------------------------------
--------------------------------乐伶曲谱生成工具--------------------------------------
-------------------------------------------------------------------------------------

-- 唱名键盘映射表
keyMap = {}

-- 低音
keyMap["_1"] = "A"
keyMap["_2"] = "S"
keyMap["_3"] = "D"
keyMap["_4"] = "F"
keyMap["_5"] = "G"
keyMap["_6"] = "H"
keyMap["_7"] = "J"

-- 中音
keyMap["1"] = "Q"
keyMap["2"] = "W"
keyMap["3"] = "E"
keyMap["4"] = "R"
keyMap["5"] = "T"
keyMap["6"] = "Y"
keyMap["7"] = "U"

-- 高音
keyMap["1_"] = "1"
keyMap["2_"] = "2"
keyMap["3_"] = "3"
keyMap["4_"] = "4"
keyMap["5_"] = "5"
keyMap["6_"] = "6"
keyMap["7_"] = "7"

-- 字符串分割
function split(str, delimiter)
    local dLen = string.len(delimiter)
    if type(str) == "nil" then
        return
    end
    local newDeli = ""
    for i = 1, dLen, 1 do
        newDeli = newDeli .. "[" .. string.sub(delimiter, i, i) .. "]"
    end

    local locaStart, locaEnd = string.find(str, newDeli)
    local arr = {}
    local n = 1
    while locaStart ~= nil do
        if locaStart > 0 then
            arr[n] = string.sub(str, 1, locaStart - 1)
            n = n + 1
        end

        str = string.sub(str, locaEnd + 1, string.len(str))
        locaStart, locaEnd = string.find(str, newDeli)
    end
    if str ~= nil then
        arr[n] = str
    end
    return arr
end

-- 获取表长度
function table_leng(t)
    local leng = 0
    for k, v in pairs(t) do
        leng = leng + 1
    end
    return leng
end

-- 验证曲谱格式是否正确
function isOpernValid(opern)
    if (type(opern) == "nil") then
        return false
    else
        if
            (type(opern["music"]) == "nil" or type(opern["beat_n"]) == "nil" or type(opern["beat_m"]) == "nil" or
                type(opern["bpm"]) == "nil")
         then
            return false
        else
            return true
        end
    end
end

-- 生成乐伶谱
function generateWuxiaOpern(opern, outputPath)
    if (not isOpernValid(opern)) then
        return nil
    end
    local beat_n = opern["beat_n"]
    local beat_m = opern["beat_m"]
    local music = opern["music"]
    local yuelingOpern

    local outputFileName
    if (type(opern["name"]) == "nil") then
        outputFileName = "YueLingOpern.md"
    end

    local file = io.open(outputPath .. "/" .. outputFileName, "w")

    file:write("# 天刀乐伶曲谱《》\n")
    file:write("译谱：池墨墨\n\n")

    for i, chapter in ipairs(music) do
        -- 音符总的加起来等于1，即一个全音符
        local noteSum = 0
        -- 小节数，没4个小节就换行
        local chapterCount = 0

        for p, v in ipairs(chapter) do
            noteSum = noteSum + (1 / v["note"])

            -- 一次同时按下的音的个数
            local toneCount = 0
            --  rc音是否存在
            local rcExist = false
            if (type(v["rc"]) ~= "nil") then
                if (type(keyMap[v["rc"]]) ~= "nil") then
                    rcExist = true
                    toneCount = toneCount + 1
                end
            end

            local chordCount = 0
            local chordTones = split(v["chord"], ",")
            if (type(v["chord"]) ~= "nil") then
                chordCount = table_leng(chordTones)
            end

            if (rcExist) then
                if (chordCount > 0) then
                    file:write("(")
                    file:write(keyMap[v["rc"]])
                    for j, tone in ipairs(chordTones) do
                        file:write(keyMap[tone])
                    end
                    file:write(")")
                else
                    file:write(keyMap[v["rc"]])
                end
            else
                if (chordCount >= 2) then
                    file:write("(")
                    for j, tone in ipairs(chordTones) do
                        file:write(keyMap[tone])
                    end
                    file:write(")")
                elseif (chordCount > 0) then
                    for j, tone in ipairs(chordTones) do
                        file:write(keyMap[tone])
                    end
                end
            end

            if (noteSum == 1) then
                file:write(" | ")
                noteSum = 0
                chapterCount = chapterCount + 1
                if (chapterCount == 4) then
                    chapterCount = 0
                    file:write("\n\n")
                end
            end
        end
    end
    file:close()
end

getOpern = loadfile("E:/WuxiaPlayMusic/songs/hong_ri.lua")

generateWuxiaOpern(getOpern(), "E:/WuxiaPlayMusic/songs")
