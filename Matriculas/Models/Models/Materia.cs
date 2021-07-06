using System;
using System.Collections.Generic;

#nullable disable

namespace Models.Models
{
    public partial class Materia
    {
        public Materia()
        {
            DocentesMateria = new HashSet<DocentesMateria>();
        }

        public int Id { get; set; }
        public int? IdCarrera { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }

        public virtual Carrera IdCarreraNavigation { get; set; }
        public virtual ICollection<DocentesMateria> DocentesMateria { get; set; }
    }
}
