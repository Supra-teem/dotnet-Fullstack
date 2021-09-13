using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using weather_forecast.Models;

namespace weather_forecast.Controllers
{
    public class WeatherController : ApiController
    {
        [Route("api/Weather/weather")]
        [HttpPost]
        public temperature weather(temperature t)
        {

            return t;
        }
    }
}
