using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace Models.Models
{
    public partial class MatriculasContext : DbContext
    {
        public MatriculasContext()
        {
        }

        public MatriculasContext(DbContextOptions<MatriculasContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Carrera> Carreras { get; set; }
        public virtual DbSet<Docente> Docentes { get; set; }
        public virtual DbSet<DocentesMateria> DocentesMaterias { get; set; }
        public virtual DbSet<Estudiante> Estudiantes { get; set; }
        public virtual DbSet<EstudiantesCarrera> EstudiantesCarreras { get; set; }
        public virtual DbSet<Materia> Materias { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=CO-PF27VH84\\SQLEXPRESS;Database=Matriculas;User Id=sa;password=123456");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Modern_Spanish_CI_AS");

            modelBuilder.Entity<Carrera>(entity =>
            {
                entity.Property(e => e.Codigo)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Nombre)
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Docente>(entity =>
            {
                entity.Property(e => e.Apellidos)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.Codigo)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Nombres)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.NumeroIdentificacion)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.TipoIdentificacion)
                    .HasMaxLength(10)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<DocentesMateria>(entity =>
            {
                entity.HasOne(d => d.IdDocenteNavigation)
                    .WithMany(p => p.DocentesMateria)
                    .HasForeignKey(d => d.IdDocente)
                    .HasConstraintName("FK_DocentesMaterias_Docentes");

                entity.HasOne(d => d.IdMateriaNavigation)
                    .WithMany(p => p.DocentesMateria)
                    .HasForeignKey(d => d.IdMateria)
                    .HasConstraintName("FK_DocentesMaterias_Materias");
            });

            modelBuilder.Entity<Estudiante>(entity =>
            {
                entity.Property(e => e.Id).ValueGeneratedNever();

                entity.Property(e => e.Apellidos)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.Codigo)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Nombres)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.NumetoIdentificacion)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.TipoIdentificacion)
                    .HasMaxLength(10)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<EstudiantesCarrera>(entity =>
            {
                entity.HasOne(d => d.IdCarreraNavigation)
                    .WithMany(p => p.EstudiantesCarreras)
                    .HasForeignKey(d => d.IdCarrera)
                    .HasConstraintName("FK_EstudiantesCarreras_Carreras");

                entity.HasOne(d => d.IdEstudianteNavigation)
                    .WithMany(p => p.EstudiantesCarreras)
                    .HasForeignKey(d => d.IdEstudiante)
                    .HasConstraintName("FK_EstudiantesCarreras_Estudiantes");
            });

            modelBuilder.Entity<Materia>(entity =>
            {
                entity.Property(e => e.Codigo)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Nombre)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdCarreraNavigation)
                    .WithMany(p => p.Materia)
                    .HasForeignKey(d => d.IdCarrera)
                    .HasConstraintName("FK_Materias_Carreras");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
