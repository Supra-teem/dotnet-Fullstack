using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FirstWebapp.Models
{
    public class studentbusinesslayer
    {
        public student studentdetails(int studentid)
        {
            student st = new student()
            {
                student_id = studentid,
                name="Suprateem",
                address="Bally,howrah",
                age=22

            };
            return st;

        }
        
    }
}