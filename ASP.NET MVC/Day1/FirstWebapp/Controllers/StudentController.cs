﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FirstWebapp.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult EnterDetails()
        {
            return View();
        }
        public ActionResult Details(string str)
        {
            ViewData["name"] = str;
            return View();
        }
    }
}