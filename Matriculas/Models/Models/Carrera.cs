using System;
using System.Collections.Generic;

#nullable disable

namespace Models.Models
{
    public partial class Carrera
    {
        public Carrera()
        {
            EstudiantesCarreras = new HashSet<EstudiantesCarrera>();
            Materia = new HashSet<Materia>();
        }

        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }

        public virtual ICollection<EstudiantesCarrera> EstudiantesCarreras { get; set; }
        public virtual ICollection<Materia> Materia { get; set; }
    }
}
