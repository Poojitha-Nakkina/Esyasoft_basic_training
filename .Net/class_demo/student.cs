using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace class_demo
{
    internal class student
    {
       int studentid;
         string name;
        int age;
        string standard;
        string contactnum;
        
        public void initialize()
        {
            studentid = 1;
            name = "abcd";

        }

        public void showDisplay()
        {
            Console.WriteLine("Displaying Objects");
            Console.WriteLine(name);
        }


        public student(int std_id , string std_name,int std_age, string std,string cn)
        {
            studentid= std_id;
            name = std_name;
            age = std_age;
            standard = std;
            contactnum = cn;
        }

        //public int getMarks()
        //{

        //}

    }
}
