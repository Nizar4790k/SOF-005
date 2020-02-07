using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Tarea3.Models;

namespace Tarea3.Controllers
{
    public class FormController : Controller
    {
        // GET: Form
        public ActionResult Form()
        {
            return View();
        }

        

        public ActionResult Result(Persona persona)
        {

            return View(persona);

         
        }


    
        
     
        
     
    
    }



}