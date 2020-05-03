
@[TOC](目录)
# 天涯明月刀罗技鼠标弹奏脚本
> 该脚本是天涯明月刀罗技G系列鼠标自动弹琴脚本，本人使用的鼠标为G102，使用lua脚本编写。我不知道有没有被封号的风险，所以如果怕被封号的可以不用看了。

## 一、前提条件

 当然了，你需要拥有一个G系列的罗技鼠标，具有宏编程的功能。


## 二、原理
通过lua宏编程模拟键盘输入，根据音符。仔细说就是，通过录入去曲谱，根据唱名(1234567)，匹配自由弹奏中对应的键位，然后模拟按键输入。

## 三、使用教程
使用教程分为初级教程和进阶教程。初级教程将介绍如何下载源码和使用，进阶教程将介绍如何编谱。
### 1. 初级教程
#### 第一步：打开自动游戏检测功能
> 打开自动游戏检测功能（也可能叫板载内存），如果不开启则无法继续进行下面的步骤

![在这里插入图片描述](https://img-blog.csdnimg.cn/202005040004274.jpg?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTM1NTE5NTI=,size_16,color_FFFFFF,t_70)


#### 第二步：为鼠标创建天刀专属配置文件

> 打开罗技鼠标配置软件，创建专属的配置文件是为了方便管理和切换，避免和其他游戏或者软件的配置文件冲突

![创建配置文件](https://img-blog.csdnimg.cn/20200329215351131.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTM1NTE5NTI=,size_16,color_FFFFFF,t_70)


> 选择天涯明月刀的启动程序

![选择天涯明月刀启动程序](https://img-blog.csdnimg.cn/20200329215435943.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTM1NTE5NTI=,size_16,color_FFFFFF,t_70)
#### 第三步：源码下载
[源码下载地址一（github）](https://github.com/slgluo/WuxiaPlayMusic)
[源码下载地址二（百度云）](https://pan.baidu.com/s/1Y3Sg2h0_sgtKJQXzmrfxaQ)提取码：c4or

*github代码更新更加及时，所以，最后从github上下载*

下面是github的下载步骤，百度云下载方式这里就不详述了。
![在这里插入图片描述](https://img-blog.csdnimg.cn/20200504001007936.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTM1NTE5NTI=,size_16,color_FFFFFF,t_70)

---
![在这里插入图片描述](https://img-blog.csdnimg.cn/20200504001032690.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTM1NTE5NTI=,size_16,color_FFFFFF,t_70)


#### 第四步：导入自动弹奏脚本
1. 将压缩包复制到`E`盘根目录进行解压
***注意：***
（1）从`github`下载的压缩包是`WuxiaPlayMusic-master`，解压之后要重命名目录为`WuxiaPlayMusic`，百度云上下载的不用
（2）有些解压软件解压之后，会生成两个`WuxiaPlayMusic`目录，碰到这种情况，要删掉一层。

		最终的目录层级如下：
		
		|-- WuxiaPlayMusic
			|-- songs
			|-- wuxia_play_music.lua
		
		如果存在其他文件或其他文件夹则不用理会
 
2. 如何没有`E`盘，需要指定脚本路径。在`wuxia_play_music.lua`中找到以下代码，修改为`WuxiaPlayMusic`文件夹的路径

```lua
-- 脚本路径，注意斜杠方向
-- 把下面的 E 改为 WuxiaPlayMusic 文件夹所在盘
scriptDir = "E:/WuxiaPlayMusic"
```

3. 选择刚才在==罗技鼠标配置软件==创建的配置，右键，选择==编写脚本==

![编写脚本](https://img-blog.csdnimg.cn/20200329215537812.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTM1NTE5NTI=,size_16,color_FFFFFF,t_70)

4. 导入自动弹奏脚本 `wuxia_play_music.lua`

![导入脚本](https://img-blog.csdnimg.cn/20200504004104122.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3UwMTM1NTE5NTI=,size_16,color_FFFFFF,t_70)

#### 第五步，自动弹奏
在开启弹奏之前，确保`ScrLk`键处于关闭状态，即`ScrLk`灯不亮。
启动游戏，进入自由弹奏模式，按下==鼠标中键(滚轮键)==，开始弹奏。按`ScrLk`停止，在弹奏过程按`Caps`下一首，弹奏完毕后按`Caps`无效，需要重新按中键弹奏。

以上，初级教程讲述完毕，下面是进阶教程，讲如何编写曲谱，没有乐理基础的可以不看。

### 2. 进阶教程
#### 第一步：编写曲谱
 新建后缀名为`lua`的文件，除中文和特殊字符外，文件名随便取，并按以下格式进行编写：

```lua
-- 卡农曲谱
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

-- rc:唱名,音高（选填）。可以在这个地方编写旋律音，也可以不写，代替的方式是旋律音也写在chord中
-- note:代表时值（必填），如4分音符，8分音符
-- chord: 和音（选填），即大家所说的双键，rc和chord会同时按下。旋律音也可以写到这里
chapter = {
    -- 三个参数都填
    {["rc"] = "3_", ["note"] = 4, ["chord"] = "1,5,1_"},
    -- 效果和上面一样
    {["note"] = 4, ["chord"] = "1,5,1_,3_"},
        
    -- 休止符等不弹的情况
    {["rc"] = "-", ["note"] = 4},
    -- 效果和上面一样
    {["note"] = 4},
		...
}
table.insert(music, chapter)

return source
```
**参数说明：**

* `bpm`：（必填）控制弹奏速度
* `beat_n`：（必填）一个小节的拍数，一般在歌谱左上角标有，如4/4，`beat_n`取分子
* `beat_m`：（必填）多少分音符为一拍，一般在歌谱左上角标有，如4/4，`beat_m`取分母
* `rc`：（选填）旋律音符，为单音，也可以不写，代替的方式是旋律音也写在`chord`中。如果遇到附点音符、延音符、休止符都可以用`0`或`-`代替，表示不弹，但是时值一定要对。因为在自由弹奏中是没有延音的，无论按多久。
* `note`：（必填）音符时值，如4分音符，8分音符
* `chord`：（选填）和音，即所谓的双键音。旋律音也可以写到这里，二选一。
* 高中低音：_ 下划线开头为低音，无前后缀为中音，_ 下划线结尾为高音

**注意事项：**

由于天崖明月刀自由弹奏的音阶只有高中低的`1234567`，没有`#`（升高一个半音）和`b`（降低一个半音），所以只能弹奏C大调和a小调的歌曲。

#### 第二步：在`wuxia_play_music.lua`中添加新增的曲谱
在`wuxia_play_music.lua`中找到以下代码，并添加到里面，要和歌谱文件名一样，否则无法弹奏
```lua
-- 歌单
-- 要和歌谱文件名一样
songList = {
    "ka_nong",
    "love_story",
    "qing_tian",
    "bei_jia_er_hu_pan",
    "dao_gu_peng_you",
}
```