using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise5
    {
        static void Main(string[] args)
        {
            int even=0, odd=0;
            int a=int.Parse(Console.ReadLine());
            for (int i = 0; i < a; i++)
            {
                if (i % 2 == 0)
                {
                    even++;
                }
                else
                {
                    odd++;
                }
            }
            Console.WriteLine("even numbers"+even);
            Console.WriteLine("odd numbers" + odd);

        }
    }
}
