using System;
using System.Collections.Generic;
using System.Text;

namespace Assignment1
{
    internal class Exercise3
    {
        static void Main(String[] args)
        {
            Console.WriteLine("Enter 1 number");
            int n1=int.Parse(Console.ReadLine());
            Console.WriteLine("Enter 2 number");
            int n2 = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter 3 number");
            int n3 = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter 4 number");
            int n4 = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter  number");
            int n5 = int.Parse(Console.ReadLine());

            int sum = n1 + n2 + n3 + n4 + n5;
            Console.WriteLine("sum"+sum);

            int avg=sum /5;
            Console.WriteLine("Average "+ avg);

        }
    }
}
