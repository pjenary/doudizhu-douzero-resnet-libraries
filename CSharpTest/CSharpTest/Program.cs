// Author: QQ 1720191365
// Email: dnns@foxmail.com
// Website: www.dnns.vip
// Created Time:2023-04

using System;
using System.Runtime.InteropServices;

namespace CSharpTest
{
    internal class Program
    {
        [DllImport("..\\..\\..\\..\\Dnn.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi)]
        public static extern IntPtr getWinrate(int type, IntPtr myCards);

        [DllImport("..\\..\\..\\..\\Dnn.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi)]
        public static extern IntPtr initCard(int id, int play, IntPtr myCards, IntPtr threeCards, IntPtr passWord);

        [DllImport("..\\..\\..\\..\\Dnn.dll", CallingConvention = CallingConvention.Cdecl, CharSet = CharSet.Ansi)]
        public static extern IntPtr getCard(int id, IntPtr nextCards, IntPtr prevCards);

        static void Main()
        {
            string src = "345566689TTJQKAA222X", three = "46T"; int id = 0;

            IntPtr ptrSrc = Marshal.StringToHGlobalAnsi(src);
            IntPtr res = getWinrate(4, ptrSrc);
            Console.WriteLine("Winrate：" + Marshal.PtrToStringAnsi(res));


            IntPtr ptrThree = Marshal.StringToHGlobalAnsi(three);
            IntPtr ptrPassword = Marshal.StringToHGlobalAnsi(string.Empty);
            res = initCard(id, 0, ptrSrc, ptrThree, ptrPassword);
            Console.WriteLine("*initCard: " + src + ": " + Marshal.PtrToStringAnsi(res));


            IntPtr ptr1 = Marshal.StringToHGlobalAnsi(string.Empty); IntPtr ptr2 = Marshal.StringToHGlobalAnsi(string.Empty);
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("AI出牌: " + Marshal.PtrToStringAnsi(res));

            ptr1 = Marshal.StringToHGlobalAnsi("0"); ptr2 = Marshal.StringToHGlobalAnsi("A");
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("0    A   AI出牌: " + Marshal.PtrToStringAnsi(res));

            ptr1 = Marshal.StringToHGlobalAnsi("0"); ptr2 = Marshal.StringToHGlobalAnsi("0");
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("0    0   AI出牌: " + Marshal.PtrToStringAnsi(res));

            ptr1 = Marshal.StringToHGlobalAnsi("0"); ptr2 = Marshal.StringToHGlobalAnsi("JJ");
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("0    JJ  AI出牌: " + Marshal.PtrToStringAnsi(res));

            ptr1 = Marshal.StringToHGlobalAnsi("0"); ptr2 = Marshal.StringToHGlobalAnsi("0");
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("0    0   AI出牌: " + Marshal.PtrToStringAnsi(res));

            ptr1 = Marshal.StringToHGlobalAnsi("9TJQKA"); ptr2 = Marshal.StringToHGlobalAnsi("0");
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("9TJQKA   0   AI出牌: " + Marshal.PtrToStringAnsi(res));

            ptr1 = Marshal.StringToHGlobalAnsi("3"); ptr2 = Marshal.StringToHGlobalAnsi("8");
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("3    8   AI出牌: " + Marshal.PtrToStringAnsi(res));

            ptr1 = Marshal.StringToHGlobalAnsi("0"); ptr2 = Marshal.StringToHGlobalAnsi("D");
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("0    D   AI出牌: " + Marshal.PtrToStringAnsi(res));

            ptr1 = Marshal.StringToHGlobalAnsi("0"); ptr2 = Marshal.StringToHGlobalAnsi("77");
            res = getCard(id, ptr1, ptr2);
            Console.WriteLine("0    77  AI出牌: " + Marshal.PtrToStringAnsi(res));
        }
    }
}
