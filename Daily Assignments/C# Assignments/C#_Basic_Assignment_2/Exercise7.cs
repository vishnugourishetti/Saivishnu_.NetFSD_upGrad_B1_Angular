using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise7
    {
        static void Main(string[] args)
        {
            float t = 0;
            float p1 = 22.5f;
            float p2 = 44.50f;
            float p3 = 9.98f;
            Console.Write("Enter product number: ");
            int a = int.Parse(Console.ReadLine());
            Console.Write("Enter quantity: ");
            int q = int.Parse(Console.ReadLine());
            switch (a)
            {
                case 1:
                    t += p1 * q;
                    break;
                case 2:
                    t += p2 * q;
                    break;
                case 3:
                    t = p3 * q;
                    break;
                default:
                    Console.WriteLine("Invalid product");
                    break;
            }
            Console.WriteLine("Total Price: " + t);
            }
    }
}
