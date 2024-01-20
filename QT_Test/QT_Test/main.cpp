// Author: QQ 1720191365
// Email: dnns@foxmail.com
// Website: www.dnns.vip
// Created Time:2023-04
#include "QLibrary"
#include <QCoreApplication>

typedef char *(*getWinrate_)(int types, const char *myCards);
getWinrate_ getWinrate;

typedef char *(*initCard_)(int id, int play, const char* myCards, const char* threeCards, const char* passWord);
initCard_ initCard;

typedef char *(*getCard_)(int id, const char* nextCards, const char* prevCards);
getCard_ getCard;

int main(int argc, char *argv[]) {
    QCoreApplication a(argc, argv);

    QLibrary *lib = new QLibrary("..\\..\\Dnn.x64.dll");
    if (!lib->load()) { return 0; }

    qDebug() << "DLL加载成功";

    getWinrate = (getWinrate_)lib->resolve("getWinrate");
    initCard = (initCard_)lib->resolve("initCard");
    getCard = (getCard_)lib->resolve("getCard");

    char card[] = "345566689TTJQKAA222X", three[] = "46T";

    qDebug() << QString::fromLocal8Bit(getWinrate(4, card));

    qDebug() << QString::fromLocal8Bit(initCard(0, 0, card, three, ""));

    qDebug() << QString::fromLocal8Bit(getCard(0, "", ""));

    qDebug() << QString::fromLocal8Bit(getCard(0, "0", "A"));

    qDebug() << QString::fromLocal8Bit(getCard(0, "0", "0"));

    qDebug() << QString::fromLocal8Bit(getCard(0, "0", "JJ"));

    return 1;
}
