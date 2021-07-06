using System;
using System.Collections.Generic;

#nullable disable

namespace Models.Models
{
    public partial class EstudiantesCarrera
    {
        public int Id { get; set; }
        public int? IdEstudiante { get; set; }
        public int? IdCarrera { get; set; }

        public virtual Carrera IdCarreraNavigation { get; set; }
        public virtual Estudiante IdEstudianteNavigation { get; set; }
    }
}
