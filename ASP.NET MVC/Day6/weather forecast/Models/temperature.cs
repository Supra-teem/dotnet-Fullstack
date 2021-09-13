using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace weather_forecast.Models
{
    public class temperature
    {
        public double temp { get; set; }
        public double feels_like { get; set; }
        public int temp_min { get; set; }
        public double temp_max { get; set; }
        public int pressure { get; set; }
        public int humidity { get; set; }
    }
}