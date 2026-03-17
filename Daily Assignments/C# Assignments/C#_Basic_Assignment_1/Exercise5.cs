using System;
using System.Collections.Generic;
using System.Text;

namespace Assignment1
{
    internal class Exercise5
    {
        static void Main(string[] args)
        {
            int a=int.Parse(Console.ReadLine());
            int b=int.Parse(Console.ReadLine());

            Console.WriteLine("Highest number is ");

            if (a > b)
            {
                Console.WriteLine(a);
            }
            else
            {
                Console.WriteLine(b);
            }
        }
    }
}
