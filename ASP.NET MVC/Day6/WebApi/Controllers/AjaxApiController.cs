using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApi.Models;

namespace WebApi.Controllers
{
    
    public class AjaxApiController : ApiController
    {
        [Route("api/AjaxApi/AjaxMethod")]
        [HttpPost]
        public Person AjaxMethod(Person p)
        {
            p.datetime = DateTime.Now.ToString();
            return p;
        }

    }
}
