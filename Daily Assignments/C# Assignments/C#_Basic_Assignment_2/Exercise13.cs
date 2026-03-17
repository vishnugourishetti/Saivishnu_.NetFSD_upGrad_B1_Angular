using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise13
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter 3 numbers");
            int a=int.Parse(Console.ReadLine());
            int b=int.Parse(Console.ReadLine());
            int c=int.Parse(Console.ReadLine());

            if (a > b && a>c)
            {
           
                    Console.WriteLine($"{a} is greater than {b} and {c}");
                }
            else if(b > c && b>a) {
                Console.WriteLine($"{b} is greater than {a} and {c}");
            }
            else
            {
                Console.WriteLine($"{c} is greater than {b} and {a}");
            }
        }
    }
}
