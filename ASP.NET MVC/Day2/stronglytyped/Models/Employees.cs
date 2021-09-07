using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace stronglytyped.Models
{
    public class Employees
    {
        public int empid { get; set; }
        public string Name { get; set; }
        public string Gender { get; set; }
        public city city { get; set; }
        public string address { get; set; }
        public string password { get; set; }

        public dept dept { get; set; }

    }
}

public enum city
{
    Delhi,
    banglore,
    kolkata,
    chennai,
    lucknow
}
public enum dept
{
    HR,
    IT,
    Admin,
    Finance,
    Manager
}