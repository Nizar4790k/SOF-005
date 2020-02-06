using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HtmlHelpers.Controllers
{
    public class FormController : Controller
    {
        // GET: Form
        public ActionResult Form()
        {
            return View();
        }

        public ActionResult Result()
        {
            ViewBag.nombre = Request.Form["name"];
            ViewBag.edad = Request.Form["edad"];
            ViewBag.cedula = Request.Form["id"];
            String destino = Request.Form["destino"];
            ViewBag.destino = null;

            switch (destino)
            {
                case "PLAYA":

                    ViewBag.destino = "https://media.blastness.info/276/top/Playa-Rincon1-top.jpg";

                    break;

                case "MONTANA":

                    ViewBag.destino = "https://ciupico.files.wordpress.com/2016/02/montain-song.jpg";

                    break;

                case "USA":
                    ViewBag.destino = "https://www.rounds.senate.gov/imo/media/image/flagrequestbaner.jpg";
                    break;

                default:
                    ViewBag.destino = "https://www.comunidadbaratz.com/wp-content/uploads/Libros-infantiles-y-escritores-representan-a-Europa.jpg";
                    break;

                   
            }
           


            return View();
        }



    }
}