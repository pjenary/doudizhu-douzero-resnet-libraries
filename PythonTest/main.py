# Author: QQ 1720191365
# Email: dnns@foxmail.com
# Website: www.dnns.vip
# Created Time:2023-04

from ctypes import *

pDll = CDLL("../Dnn.x64.dll")

pDll.getWinrate.restype = c_char_p
pDll.initCard.restype = c_char_p
pDll.getCard.restype = c_char_p

res = pDll.getWinrate(4, b'345566689TTJQKAA222X')
print("Winrate：", res.decode('GBK'))

res = pDll.initCard(0, 0, b'345566689TTJQKAA222X', b'46T', b'')
print("*initCard: ", res.decode('GBK'))

res = pDll.getCard(0, b'', b'')
print("AI出牌: ", res.decode('GBK'))

res = pDll.getCard(0, b'0', b'A')
print("0    A   AI出牌: ", res.decode('GBK'))

res = pDll.getCard(0, b'0', b'0')
print("0    0   AI出牌: ", res.decode('GBK'))

res = pDll.getCard(0, b'0', b'JJ')
print("0    JJ  AI出牌: ", res.decode('GBK'))

res = pDll.getCard(0, b'0', b'0')
print("0    0   AI出牌: ", res.decode('GBK'))

res = pDll.getCard(0, b'9TJQKA', b'')
print("9TJQKA   0   AI出牌: ", res.decode('GBK'))

res = pDll.getCard(0, b'3', b'8')
print("3    8   AI出牌: ", res.decode('GBK'))

res = pDll.getCard(0, b'0', b'D')
print("0    D   AI出牌: ", res.decode('GBK'))

res = pDll.getCard(0, b'0', b'77')
print("0    77  AI出牌: ", res.decode('GBK'))
