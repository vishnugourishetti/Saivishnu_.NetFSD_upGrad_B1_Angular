using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise18
    {
        static void Main()
        {
            Console.Write("Enter first word: ");
            string str1 = Console.ReadLine();

            Console.Write("Enter second word: ");
            string str2 = Console.ReadLine();

            if (str1 == str2)
                Console.WriteLine("Both words are same");
            else
                Console.WriteLine("Words are different");
        }
    }
}
