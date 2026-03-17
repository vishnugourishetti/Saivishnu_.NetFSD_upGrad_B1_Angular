using System;
using System.Collections.Generic;
using System.Text;

namespace Assignment1
{
    internal class Exercise2
    {
        static void Main()
        {
            Console.WriteLine("Enter Kilometers");
            decimal km=decimal.Parse(Console.ReadLine());
            decimal meters = km * 1000;
            Console.WriteLine($"{km} in meters is {meters}");

        }
    }
}
