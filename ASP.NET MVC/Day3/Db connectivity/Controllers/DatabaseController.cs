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
        public ActionResult Create()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Create(Emp e)
        {
            MindteckEntities db = new MindteckEntities();
            if (ModelState.IsValid)
            {
                db.Emps.Add(e);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(e);
        }
        public ActionResult Index()
        {
            MindteckEntities db = new MindteckEntities();
            List<Emp> em = db.Emps.ToList();
            return View(em);
        }
        public ActionResult Details(int id)
        {
            MindteckEntities db = new MindteckEntities();
            Emp em = db.Emps.FirstOrDefault(x => x.empid == id);
            return View(em);
        }
        public ActionResult Delete(int id)
        {
            MindteckEntities db = new MindteckEntities();
            Emp em = db.Emps.FirstOrDefault(x => x.empid == id);
            db.Emps.Remove(em);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Edit(int id)
        {
            MindteckEntities db = new MindteckEntities();
            Emp em = db.Emps.FirstOrDefault(x => x.empid == id);
            
            return View(em);
        }
        [HttpPost]
        public ActionResult Edit(Emp e)
        {
            MindteckEntities db = new MindteckEntities();
            Emp em = db.Emps.FirstOrDefault(x => x.empid == e.empid);
            db.Emps.Remove(em);
            db.Emps.Add(e);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}