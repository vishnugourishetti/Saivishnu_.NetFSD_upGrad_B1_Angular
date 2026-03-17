using System;
using System.Collections.Generic;
using System.Text;

namespace Assignment1
{
    internal class Exercise6
    {
        static void ReactangleArea(int a , int b)
        {
            Console.WriteLine("Area of Rectangle is"+a * b);
        }
        static void SqaureArea(int a)
        {
            Console.WriteLine("Area of Square is"+ a*a); 
        }
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the length for Recatangle");
                int a=int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the Width for Recatangle");
                int b = int.Parse(Console.ReadLine());




            Console.WriteLine("Enter the side of Square");
            int s = int.Parse(Console.ReadLine());

            ReactangleArea(a, b);
            SqaureArea(s);


        }
    }
}
