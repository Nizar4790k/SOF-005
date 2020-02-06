using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HtmlHelpers.Models
{
    public class Cliente
    {
        public string Nombre { get; set; }
        public string Cedula { get; set; }

        public int Edad { get; set; }

        public Destino destino{get; set;}





    }

    public enum Destino
    {
        PLAYA,MONTANA,USA,EUROPA
    }


}