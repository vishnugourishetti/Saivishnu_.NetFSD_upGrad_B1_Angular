using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise11
    {
        static void Main(string[] args)
        {
            int n=int.Parse(Console.ReadLine());
            for(int i = 1; i <= 20; i++)
            {
                Console.WriteLine($"{n} * {i} = {n * i}");
            }
        }
    }
}
