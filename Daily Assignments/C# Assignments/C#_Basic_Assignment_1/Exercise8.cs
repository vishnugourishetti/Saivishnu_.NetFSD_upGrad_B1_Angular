using System;
using System.Collections.Generic;
using System.Text;

namespace Assignment1
{
    internal class Exercise8
    {
        static void Main(string[] args)
        {
            Console.Write("Enter a string: ");
            string str = Console.ReadLine();

            if (str.Length < 3)
            {
                Console.WriteLine("Too short");
            }
            else
            {
                char ch = char.ToLower(str[2]);

                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
                    Console.WriteLine("Vowel");
                else
                    Console.WriteLine("Consonant");
            }
        }
    }
}
