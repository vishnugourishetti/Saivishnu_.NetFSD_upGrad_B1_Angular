using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise3
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter first number");
            int a =int.Parse(Console.ReadLine());
            Console.WriteLine("Enter Second number");
            int b =int.Parse(Console.ReadLine());

            for(int i = a; i <= b; i++)
            {
                Console.WriteLine(i);
            }
            }
    }
}
