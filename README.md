# 天涯明月刀罗技鼠标弹奏脚本
> 该脚本是天涯明月刀罗技G系列鼠标自动弹琴脚本，使用lua脚本编写。本人使用的鼠标为G102

## 一、前提条件

 1. 当然了，你需要拥有一个G系列的罗技鼠标，具有宏编程的功能。
 2. 由于天崖明月刀自由弹奏的音阶属于C大调音阶，没有升降调，所以只能弹奏C大调的歌曲。

因此具有乐理的同学可以通过转调编谱，本人乐理知识有限，太菜o(╯□╰)o

## 二、原理
通过lua宏编程模拟键盘输入，根据音符。仔细说就是，通过录入去曲谱，根据唱名(1234567)，匹配自由弹奏中对应的键位，然后模拟按键输入。

## 三、使用方法
### 第一步：为鼠标创建天刀专属配置文件

> 创建专属的配置文件是为了方便管理和切换，避免和其他游戏或者软件的配置文件冲突

![新建配置文件](./images/新建配置文件.png)


> 选择天涯明月刀的启动程序

![选择天涯明月刀启动程序](./images/选择天涯明月刀启动程序.png)


### 第二步：导入自动弹奏脚本

> 选择刚才创建的配置，右键，选择==编写脚本==

![编写脚本](./images/编写脚本.png)

> 导入自动弹奏脚本 `wuxia_play_music.lua`

![导入脚本](./images/导入脚本.png)

### 第三步：选择弹奏的曲谱

> 在 `E:/WuxiaPlayMusic/`文件夹下放入曲谱 `music.lua`

1. 如果没有`WuxiaPlayMusic`文件夹则手动新建
2. 如果想放在其他位置，在`wuxia_play_music.lua`中找到以下代码，手动修改为喜欢的位置

``` lua
function OnEvent(event, arg)
    OutputLogMessage("%s, %d\n", event, arg)
    if(event == "MOUSE_BUTTON_PRESSED") then
		-- 鼠标侧键前进键
        if(arg == 5) then
            -- 导入曲谱
            -- 可以修改为自己喜欢的位置，路径一定要正确，注意路径的斜杠，否则无法弹奏
            local music = dofile("E:/WuxiaPlayMusic/music.lua")
            play(music())
        end
    end
end
```
### 第四步，自动弹奏
启动游戏，进入自由弹奏模式，按下==鼠标侧键前进键==，开始弹奏

## 四、编写曲谱
新建music.lua文件，并按以下格式进行编写：

``` lua
-- `ka_nong`可以随便取，不要有特殊符号
function ka_nong()
    local source = {}

    -- 一分钟80拍，控制弹奏速度
    source["bpm"] = 80
	
    -- beat_n一个小节有n拍，
    source["beat_n"] = 4
	
    -- beat_m分音符为一拍
    source["beat_m"] = 4

    local chords = source["chords"]

    source["music"] = {}
    music = source["music"]

    -- rc:唱名,音高。可以在这个地方编写旋律音
	-- note:代表时值，如4分音符，8分音符
	-- chord: 和音，即大家所说的双键，rc和chord会同时按下
    chapter = {
 		{["rc"] = "3_", ["note"] = 4, ["chord"] = "1,5,1_"},
        {["rc"] = "-", ["note"] = 4},
        {["rc"] = "7", ["note"] = 4, ["chord"] = "_5,2,5"},
        {["rc"] = "-", ["note"] = 4},
		...
	}
	table.insert(music, chapter_1)

    return source
}
-- 这里别忘了写，和开头的名字一样
return ka_nong
```

> `bpm`：控制弹奏速度
> `beat_n`：一个小节的拍数，一般在歌谱左上角标有，如4/4，`beat_n`取分子
> `beat_m`：多少 分音符为一拍，一般在歌谱左上角标有，如4/4，`beat_m`取分母
> `rc`：旋律音符，为单音
> `note`：音符时值，如4分音符，8分音符
> `chord`：和音，即所谓的双键音
> 高中低音：_ 下划线开头为低音，无前后缀为中音，_ 下划线结尾为低音

## 五、源代码

``` lua
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
            local music = dofile("E:/WuxiaPlayMusic/music.lua")
            play(music())
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

```

