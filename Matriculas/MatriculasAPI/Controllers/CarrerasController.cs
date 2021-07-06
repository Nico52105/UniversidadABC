using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Models.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MatriculasAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CarrerasController : ControllerBase
    {
        private MatriculasContext db;
        public CarrerasController(MatriculasContext context)
        {
            db = context;
        }

        // GET api/Carreras/Obtener
        [HttpGet]
        [Route("[action]")]
        public List<Carrera> Obtener()
        {
            List<Carrera> carreras = null;
            carreras = db.Carreras.ToList();
            return carreras;
        }
    }
}
