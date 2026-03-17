using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise6
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the Temparature in Fahrenheit");
            float a=float.Parse(Console.ReadLine());

            float b = (a - 32)* 9/5;
            Console.WriteLine(b);
        }
    }
}
