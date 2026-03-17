using System;
using System.Collections.Generic;
using System.Text;

namespace C__Basic_Assignment_2
{
    internal class Exercise15
    {
        static void Main()
        {
            int[] marks = new int[10];
            int total = 0;

          
            for (int i = 0; i < 10; i++)
            {
                Console.Write("Enter mark " + (i + 1) + ": ");
                marks[i] = int.Parse(Console.ReadLine());
                total += marks[i];
            }

         
            double avg = total / 10.0;

          
            int min = marks[0];
            int max = marks[0];

            for (int i = 1; i < 10; i++)
            {
                if (marks[i] < min)
                    min = marks[i];

                if (marks[i] > max)
                    max = marks[i];
            }

            
            Array.Sort(marks);

            
            Console.WriteLine("\nTotal: " + total);
            Console.WriteLine("Average: " + avg);
            Console.WriteLine("Minimum: " + min);
            Console.WriteLine("Maximum: " + max);

            Console.WriteLine("\nAscending Order:");
            foreach (int m in marks)
                Console.Write(m + " ");

        
            Array.Reverse(marks);

            Console.WriteLine("\n\nDescending Order:");
            foreach (int m in marks)
                Console.Write(m + " ");
        }
    }
}

