using System.Runtime.InteropServices.Marshalling;
using System.Runtime.Intrinsics.Arm;

namespace Assignment
{
    internal class Program
    {
        static int amount = 0;
        static int acc_num = 4740;
        static string name = "abcd";
        static int temp = 0;
        static bool flag =true;
        
        static void Main(string[] args)
        {
            while(flag)
            {
                Console.WriteLine("Hello, Welcome to Bank!");
                Console.WriteLine("1) Create an account");
                Console.WriteLine("2) Deposit");
                Console.WriteLine("3) Withdrawl");
                Console.WriteLine("4)Display Account Details");
                Console.WriteLine("5)Exit");
                Console.Write("Choose A Number :");

                string num = Console.ReadLine();

                switch (num)
                {
                    case "1":
                        createAccount();
                        break;
                    case "2":
                        Deposit();
                        break;
                    case "3":
                        withdrawl();
                        break;
                    case "4":
                        details();
                        break;
                    case "5":
                        exit();
                        return;
                    default:
                        Console.WriteLine("Invalid Option");
                        break;


                }
            } 


        }
    

    static void createAccount()
        {
            Console.WriteLine("Enter your Name");
            name = Console.ReadLine();
            int account_num = acc_num;
            Console.WriteLine("Enter amount to be deposited");
            amount = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Account Successfully Created");



        }

        static void Deposit() {
            Console.WriteLine("Enter your Account number");
            temp = Convert.ToInt32(Console.ReadLine());
            if (temp == acc_num)
            {
                Console.WriteLine("Enter the amount :");
                int dep = Convert.ToInt32(Console.ReadLine());
                amount += dep;
                Console.WriteLine("Deposited amount is:"+dep);
                Console.WriteLine("Balance is:" + amount);

            }
            else
            {
                Console.WriteLine("Entered Wrong Account number");
            }

            Console.WriteLine("Amount successfully deposited");

        }

        static void withdrawl()
        {
            Console.WriteLine("Enter your Account number");
            temp = Convert.ToInt32(Console.ReadLine());
            if (temp == acc_num)
            {
                Console.WriteLine("Enter the amount to be withdrawl:");

                int wd = Convert.ToInt32(Console.ReadLine());
                if (wd <= amount) {
                    amount -= wd;
                    Console.WriteLine("Withdrawl amount is:" + wd);
                    Console.WriteLine("Balance is:" + amount);
                }
                else
                {
                    Console.WriteLine("Insufficient Balance");
                }

            }
            else
            {
                Console.WriteLine("Entered Wrong Account number");
            }
          
        }


        static (string f_name, int ac_num, int balance) details()
        {
            return (name, acc_num, amount);
        }

        static bool exit()
        {
            flag = false;
            return flag;
        }
    }
}
