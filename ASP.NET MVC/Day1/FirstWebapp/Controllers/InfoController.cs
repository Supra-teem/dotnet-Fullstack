using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FirstWebapp.Controllers
{
    public class InfoController : Controller
    {
        // GET: Info
        public  ActionResult Index()
        {
            return View();
        }
        public string Hello()
        {
            return "Hello MVC 5";
        }
        public string Hello1(int id)
        {
            return "Hello MVC 5 your id id: "+id;
        }
    }
}