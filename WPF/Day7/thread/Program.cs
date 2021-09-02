using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace thread
{
    class Program
    {
        public void print()
        {
            for (int a = 1; a <= 10; a++)
            {
                Console.WriteLine("first print is " + a.ToString());
                //Thread.Sleep(1000);
            }
        }
        public void print1()
        {
            for (int a = 1; a <= 10; a++)
            {
                Console.WriteLine("second print is " + a.ToString());
                //Thread.Sleep(1000);
            }
        }

        static void Main(string[] args)
        {
            //print();
            //print1();
            Console.WriteLine("start of main thread");
            Program p = new Program();

            Thread t = new Thread(new ThreadStart(p.print));
            Thread t1 = new Thread(new ThreadStart(p.print1));
            t.Start();
            t1.Start();
            try
            {
                t.Abort();
                t1.Abort();

            }
            catch (ThreadAbortException ta)
            {
                Console.WriteLine(ta.ToString());
            }
            Console.WriteLine("end of main");
            // p.print1();



        }
    }
}
