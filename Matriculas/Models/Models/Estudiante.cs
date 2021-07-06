using System;
using System.Collections.Generic;

#nullable disable

namespace Models.Models
{
    public partial class Estudiante
    {
        public Estudiante()
        {
            EstudiantesCarreras = new HashSet<EstudiantesCarrera>();
        }

        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string TipoIdentificacion { get; set; }
        public string NumetoIdentificacion { get; set; }

        public virtual ICollection<EstudiantesCarrera> EstudiantesCarreras { get; set; }
    }
}
