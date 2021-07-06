using System;
using System.Collections.Generic;

#nullable disable

namespace Models.Models
{
    public partial class DocentesMateria
    {
        public int Id { get; set; }
        public int? IdDocente { get; set; }
        public int? IdMateria { get; set; }

        public virtual Docente IdDocenteNavigation { get; set; }
        public virtual Materia IdMateriaNavigation { get; set; }
    }
}
