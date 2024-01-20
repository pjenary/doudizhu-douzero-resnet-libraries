// Author: QQ 1720191365
// Email: dnns@foxmail.com
// Website: www.dnns.vip
// Created Time:2023-04

变量 线程ID
//从这里开始执行
功能 执行()
    
    var K = com("dnncom.dnn")
    
    var str = K.getWinrate(4, "345566689TTJQKAA222X")
    调试输出(str)
    
    
    str = K.initCard(0, 0, "345566689TTJQKAA222X", "46T", "")
    调试输出(str)
    
    str = K.getCard(0, "", "")
    调试输出(str)
    
    str = K.getCard(0, "0", "A")
    调试输出(str)
    
    str = K.getCard(0, "0", "0")
    调试输出(str)
    
    str = K.getCard(0, "0", "JJ")
    调试输出(str)
    
    str = K.getCard(0, "0", "0")
    调试输出(str)
    
    str = K.getCard(0, "9TJQKA", "0")
    调试输出(str)
    
    str = K.getCard(0, "3", "8")
    调试输出(str)
    
    str = K.getCard(0, "0", "D")
    调试输出(str)
    
    str = K.getCard(0, "0", "77")
    调试输出(str)
    
    str = K.getCard(0, "0", "0")
    调试输出(str)
    
    str = K.getCard(0, "0", "0")
    调试输出(str)
    
    
结束
//启动_热键操作
功能 启动_热键()
    线程ID = 线程开启("执行", "")
结束

//终止热键操作
功能 终止_热键()
    线程关闭(线程ID)
结束

