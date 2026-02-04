// See https://aka.ms/new-console-template for more information
using System;

namespace activity2
{
    class Program
    {
        static void Main(string[] args)
        {
            //Declare Variables
            String txtIn = "Wonderful ";
            String lang = "C# or CS";
            int sum = 10;
            int num = 20;
            int factor = 5;
            
            //Main Program
            txtIn += lang;
            sum += num *= factor;
            sum /= factor;
            
            Console.WriteLine(txtIn);
            Console .WriteLine("Add and Assign Integers: " +sum);
        }
    }
}
