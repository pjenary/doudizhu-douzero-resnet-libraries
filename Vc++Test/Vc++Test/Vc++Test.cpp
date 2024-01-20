// Author: QQ 1720191365
// Email: dnns@foxmail.com
// Website: www.dnns.vip
// Created Time:2023-04
#include <windows.h>
#include <iostream>
#include <string>
#include <thread>

using namespace std;
HMODULE module = LoadLibrary("..\\..\\Dnn.dll");

typedef char* (_stdcall* _getWinrate)(int type, const char* myCards);
_getWinrate getWinrate = (_getWinrate)GetProcAddress(module, "getWinrate");

typedef char* (_stdcall* _initCard)(int id, int play, const char* myCards, const char* threeCards, const char* passWord);
_initCard initCard = (_initCard)GetProcAddress(module, "initCard");

typedef char* (_stdcall* _getCard)(int id, const char* nextCards, const char* prevCards);
_getCard getCard = (_getCard)GetProcAddress(module, "getCard");

void fun(int id) {
	string src, str, res, md5, three;
	src = "345566689TTJQKAA222X", three = "46T";
	res = getWinrate(4, src.c_str()); cout << "Winrate: " << res << endl;

	str = initCard(id, 0, src.c_str(), three.c_str(), md5.c_str());
	cout << "*手牌: " << src << " : " << str << endl;

	res = getCard(id, "", ""); cout << "*出牌: " << res << endl;
	res = getCard(id, "0", "A"); cout << "*出牌: " << res << endl;
	res = getCard(id, "0", "0"); cout << "*出牌: " << res << endl;
	res = getCard(id, "0", "JJ"); cout << "*出牌: " << res << endl;
	res = getCard(id, "0", "0"); cout << "*出牌: " << res << endl;
	res = getCard(id, "9TJQKA", "0"); cout << "*出牌: " << res << endl;
	res = getCard(id, "3", "8"); cout << "*出牌: " << res << endl;
	res = getCard(id, "0", "D"); cout << "*出牌: " << res << endl;
	res = getCard(id, "0", "77"); cout << "*出牌: " << res << endl;
	res = getCard(id, "0", "0"); cout << "*出牌: " << res << endl;
	res = getCard(id, "0", "0"); cout << "*出牌: " << res << endl;
}

int main() {
	constexpr auto TH = 11;
	thread threads[TH];

	for (short t = 0; t < 11; t++) {

		for (short i = 0; i < TH; ++i) { threads[i] = thread(fun, i + 1); }

		for (auto& thr : threads) { thr.join(); }

		Sleep(1000);
	}

	system("pause");
	FreeLibrary(module);
	return 1;
}
