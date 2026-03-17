using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise9
    {
        static void Main(string[] args)
        {
            int fact = 1;
            int n = int.Parse(Console.ReadLine());
            for (int i = 1; i <= n; i++)
            {
                fact= fact * i;
            }
            Console.WriteLine("Factorial of  "+ n+ " is " + fact);
        }
    }
}
