using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Db_connectivity.Models;

namespace Db_connectivity.Controllers
{
    public class DatabaseController : Controller
    {
        // GET: Database
        public ActionResult Index()
        {
            MindteckEntities db = new MindteckEntities();
            List<Emp> em = db.Emps.ToList();
            return View(em);
        }
    }
}