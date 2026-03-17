using System;
using System.Collections.Generic;
using System.Text;

namespace Assignment1
{
    internal class Exercise7
    {
        static void Main(string[] args)
        {
            Console.Write("Enter the Distance of Journey in kms: ");
            decimal dist=decimal.Parse(Console.ReadLine());
            Console.Write("Enter the Speed of Journey in km/hr: ");
            decimal speed = decimal.Parse(Console.ReadLine());

            decimal time = dist / speed;
            Console.WriteLine("Time taken in hr: " + time);


        }
    }
}
