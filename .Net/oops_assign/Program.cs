namespace oops_assign
{
    internal class Program
    {
        static Classs account;
        static int accNum = 4740;
        static void Main(string[] args)
        {
            bool flag = true;

            while (flag)
            {
                Console.WriteLine("Hello, Welcome to Bank!");
                Console.WriteLine("1) Create an account");
                Console.WriteLine("2) Deposit");
                Console.WriteLine("3) Withdraw");
                Console.WriteLine("4) Display Account Details");
                Console.WriteLine("5) Exit");
                Console.Write("Choose A Number: ");

                string num = Console.ReadLine();

                switch (num)
                {
                    case "1":
                        CreateAccount();
                        break;
                    case "2":
                        Deposit();
                        break;
                    case "3":
                        Withdraw();
                        break;
                    case "4":
                        DisplayDetails();
                        break;
                    case "5":
                        flag = false;
                        Console.WriteLine("Thank you for using our Bank!");
                        break;
                    default:
                        Console.WriteLine("Invalid Option");
                        break;
                }
            }
        }

        static void CreateAccount()
        {
            Console.WriteLine("Enter your Name:");
            string name = Console.ReadLine();

            Console.WriteLine("Enter amount to be deposited:");
            int initialDeposit = Convert.ToInt32(Console.ReadLine());

            account = new Classs(accNum, name, initialDeposit);

            Console.WriteLine("Account Successfully Created!");
        }

        static void Deposit()
        {
            if (account == null)
            {
                Console.WriteLine("No account exists. Please create an account first.");
                return;
            }

            Console.WriteLine("Enter your Account number:");
            int acc = Convert.ToInt32(Console.ReadLine());

            if (acc == account.GetAccountNumber())
            {
                Console.WriteLine("Enter amount to deposit:");
                int amount = Convert.ToInt32(Console.ReadLine());
                account.Deposit(amount);
            }
            else
            {
                Console.WriteLine("Wrong Account Number");
            }
        }

        static void Withdraw()
        {
            if (account == null)
            {
                Console.WriteLine("No account exists. Please create an account first.");
                return;
            }

            Console.WriteLine("Enter your Account number:");
            int acc = Convert.ToInt32(Console.ReadLine());

            if (acc == account.GetAccountNumber())
            {
                Console.WriteLine("Enter amount to withdraw:");
                int amount = Convert.ToInt32(Console.ReadLine());
                account.Withdraw(amount);
            }
            else
            {
                Console.WriteLine("Wrong Account Number");
            }
        }

        static void DisplayDetails()
        {
            if (account == null)
            {
                Console.WriteLine("No account exists. Please create an account first.");
                return;
            }

            account.DisplayDetails();
        }

    }
}






