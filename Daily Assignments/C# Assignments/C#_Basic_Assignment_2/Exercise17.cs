using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise17
    {
        static void Main(string[] args)
        {
            Console.Write("Enter a word: ");
            string str = Console.ReadLine();

            string rev = "";

            for (int i = str.Length - 1; i >= 0; i--)
            {
                rev += str[i];
            }

            Console.WriteLine("Reversed word: " + rev);
        }
    }
 
}
