using System;
using System.Collections.Generic;

#nullable disable

namespace Models.Models
{
    public partial class Docente
    {
        public Docente()
        {
            DocentesMateria = new HashSet<DocentesMateria>();
        }

        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string TipoIdentificacion { get; set; }
        public string NumeroIdentificacion { get; set; }

        public virtual ICollection<DocentesMateria> DocentesMateria { get; set; }
    }
}
