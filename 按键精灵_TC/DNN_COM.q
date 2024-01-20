[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=a2b856c0-daf0-4ac4-b595-55dbeb0af2b5
Description=DNN_COM
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
// Author: QQ 1720191365
// Email: dnns@foxmail.com
// Website: www.dnns.vip
// Created Time:2023-04

set ws=createobject("Wscript.Shell")
ws.run "regsvr32 d:/dnncom.dll /s"
Set ws = nothing
Set K = CreateObject("dnncom.dnn")

mycard = "345566689TTJQKAA222X" //手牌，地主20张，农民17张
three = "46T" //三张地主牌

For i=1 To 100
    str = K.getWinrate(0, "3556689TJQKAA222X") //评估叫地主和不叫地主胜率，可以不用
    TracePrint str & "," & i
    Delay 100
    
    str = K.initCard(0, 0, mycard,three,"") //创建牌局
    TracePrint str & "," & i
    Delay 100
    
    str = K.getCard(0, "","") //取最佳出牌，上家和下家还没出
    TracePrint str & "," & i
    Delay 100
    
    str = K.getCard(0, "0","A") //下家不出:"0"，上家出:"A"
    TracePrint str & "," & i
    Delay 100
    
    str = K.getCard(0, "0","0") //下家不出:"0"，上家不出:"0"
    TracePrint str & "," & i
    Delay 100
    
    str = K.getCard(0, "0","JJ") //下家不出:"0"，上家出:"JJ"
    TracePrint str & "," & i
    Delay 1000
Next
    