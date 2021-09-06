using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FirstWebapp.Controllers
{
    public class MovieController : Controller
    {
        // GET: Movie
        private List<FirstWebapp.Models.Movie> mv;
        public MovieController()
        {
            mv = new List<Models.Movie>()
            {
                new Models.Movie()
                {Title="Harry potter",ReleasingDate="26/06/2008",Genre="Magic",Rating=7.8,Price=80 },
                new Models.Movie()
                {Title="Avengers EndGame",ReleasingDate="25/05/2017",Genre="Action",Rating=8.1,Price=90 },
                new Models.Movie()
                {Title="SpiderMan",ReleasingDate="11/12/2021",Genre="Action",Rating=8.5,Price=150 }
            };

        }
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult showtable()
        {
            return View(mv);
        }
    }
}