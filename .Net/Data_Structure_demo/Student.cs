using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Structure_demo
{
    internal class Student
    {
        public int id;
       public  string name;
        public int marks;


        public Student(int std_id, string std_name, int score)
        {
            id = std_id;
            name = std_name;
            marks = score;
        }
    }
}
