using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
namespace scaffolding.Controllers
{
    public class fileController : Controller
    {
        // GET: file
        public ActionResult Index()
        {
            return View();
        }
       [HttpGet]
       public FileResult Download()
        {
            byte[] fileBytes = System.IO.File.ReadAllBytes(@"C:\Users\Suprateem\Desktop\Hello.txt");
            string filename = "mytxt1.txt";
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, filename);
        }
    }
}