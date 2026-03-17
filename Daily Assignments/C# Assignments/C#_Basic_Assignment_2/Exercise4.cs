using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise4
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a number");
            int a = int.Parse(Console.ReadLine());
            if (a % 2 == 0)
            {
                Console.WriteLine(a + "is even");
            }
            else
            {
                Console.WriteLine(a + "is odd");
            }
        }
    }
}
