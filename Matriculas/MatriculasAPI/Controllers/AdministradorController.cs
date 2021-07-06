using Microsoft.AspNetCore.Mvc;
using Models.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MatriculasAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdministradorController : ControllerBase
    {
        private MatriculasContext db;
        public AdministradorController(MatriculasContext context)
        {
            db = context;
        }
        // GET: api/<AdministradorController>
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<AdministradorController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<AdministradorController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<AdministradorController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<AdministradorController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }

        // GET api/<AdministradorController>/5
        [HttpGet]
        [Route("[action]/{id}")]
        public string ObtenerCarreras()
        {
            List<Carrera> carreras = null;
            carreras = db.Carreras.ToList();
            return JsonConvert.SerializeObject(carreras);
        }
    }
}
