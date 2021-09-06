using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FirstWebapp.Models
{
    public class Movie
    {
        public string Title { get; set;}
        public string ReleasingDate { get; set;}
        public string Genre { get; set;}
        public Double Rating { get; set;}
        public Double Price { get; set;}
    }
}