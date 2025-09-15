using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oops_assign
{
    internal class Classs
    {
        private int accountNumber;
        private string name;
        private int balance;

        public Classs(int accNum, string name, int initialDeposit)
        {
            this.accountNumber = accNum;
            this.name = name;
            this.balance = initialDeposit;
        }

        public void Deposit(int amount)
        {
            balance += amount;
            Console.WriteLine($"Deposited amount: {amount}");
            Console.WriteLine($"Balance: {balance}");
        }

        public void Withdraw(int amount)
        {
            if (amount <= balance)
            {
                balance -= amount;
                Console.WriteLine($"Withdrawn amount: {amount}");
                Console.WriteLine($"Balance: {balance}");
            }
            else
            {
                Console.WriteLine("Insufficient Balance");
            }
        }

        public void DisplayDetails()
        {
            Console.WriteLine("\n----- Account Details -----");
            Console.WriteLine($"Name: {name}");
            Console.WriteLine($"Account Number: {accountNumber}");
            Console.WriteLine($"Balance: {balance}");
            Console.WriteLine("---------------------------\n");
        }

        public int GetAccountNumber() => accountNumber;
    }
}
