using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise14
    {
        static void Main(string[] args)
        {
            int num, min;

            Console.Write("Enter number 1: ");
            min = int.Parse(Console.ReadLine());

            for (int i = 2; i <= 5; i++)
            {
                Console.Write("Enter number " + i + ": ");
                num = int.Parse(Console.ReadLine());

                if (num < min)
                {
                    min = num;
                }
            }

            Console.WriteLine("Smallest number: " + min);
        }
    }
}
