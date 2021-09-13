using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using webapi2.Models;

namespace webapi2.Controllers
{
    public class EmpController : ApiController
    {

        public string get()
        {
            return "Welcome to the company";
        }

        public List<Emp> get(int id)
        {
            return new List<Emp>
            {
                new Emp
                {
                    name="Suresh",
                    dept="IT",
                    Salary=52000

                },
                new Emp
                {
                    name="Bimal",
                    dept="HR",
                    Salary=62000

                },
                new Emp
                {
                    name="Biplab",
                    dept="IT",
                    Salary=5000

                },
                new Emp
                {
                    name="Adam",
                    dept="Admin",
                    Salary=65000

                }
            };
            
        }
    }
}
