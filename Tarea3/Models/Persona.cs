using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tarea3.Models
{
    public class Persona
    {

        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Cedula { get; set; }

        public int Edad { get; set; }

        public string Telefono { get; set; }

        public string Email { get; set; }

        public string EstadoCivil { get; set; }

         public bool Musica { get; set; }

        public bool VideoJuegos { get; set; }

        public bool Anime { get; set; }

        public Sexo Sexo { get; set; }

        

       

    }


 
    public enum Sexo
    {
        M,F
    }



}