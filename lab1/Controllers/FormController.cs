using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using lab1.Models;


namespace lab1.Controllers
{
    public class FormController : Controller
    {
        // GET: Form
        public ActionResult Form()
        {
            return View();
        }

        public ActionResult Result(Person person)
        {
            return View(person);
        }
    }
}