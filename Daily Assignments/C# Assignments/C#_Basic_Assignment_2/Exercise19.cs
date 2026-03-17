using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise19
    {
        static void Main()
        {
            Console.Write("Enter a word: ");
            string str = Console.ReadLine();

            string rev = "";

            for (int i = str.Length - 1; i >= 0; i--)
            {
                rev += str[i];
            }

            if (str == rev)
                Console.WriteLine("Palindrome");
            else
                Console.WriteLine("Not Palindrome");
        }
    }
}
