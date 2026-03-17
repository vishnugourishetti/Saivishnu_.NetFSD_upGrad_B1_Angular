using System;
using System.Collections.Generic;
using System.Text;

namespace Assignment1
{
    internal class Exercise4
    {
        static void Main(String[] args)
        {
            Console.WriteLine("Enter a number");
            int a=int.Parse(Console.ReadLine());

            if (a % 2 == 0)
            {
                Console.WriteLine($"{a} is Even");
            }
            else
            {
                Console.WriteLine($"{a} is odd");
            }
        }
    }
}
