using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise10
    {
        static void Main(string[] args)
        {
            int a = 0, b = 1, c;

            Console.Write(a + " " + b + " ");

            while (true)
            {
                c = a + b;

                if (c > 40)
                    break;

                Console.Write(c + " ");

                a = b;
                b = c;
            }
        }
    }
}
