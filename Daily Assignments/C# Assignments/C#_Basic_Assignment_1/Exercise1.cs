namespace Assignment1
{
    internal class Exercise1
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a value");
            int a=int.Parse(Console.ReadLine());
            Console.WriteLine("Enter b value");
            int b=int.Parse(Console.ReadLine());

            int c = a / b;
            Console.WriteLine(c);

        }
    }
}
