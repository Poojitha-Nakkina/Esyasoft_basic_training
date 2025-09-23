﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace apiDemo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiController : ControllerBase
    {
        private List<Dictionary<string, string>> student_dict = new List<Dictionary<string, string>>
        {
          new Dictionary<string, string>{{"id","1"},{"name","Sachin"}},
          new Dictionary<string, string>{{"id","2"},{"name","Rahul"}},
        };

        [HttpGet]

        public IActionResult GetAllStudents()
        {
            return new JsonResult(student_dict);
        }
        [HttpGet("{id}")]

        public IActionResult GetStudentById(string id)
        {
            var student_details = student_dict.FirstOrDefault(p => p["id"]==id);
            if(student_details != null)
            {
                return new JsonResult(student_details);
            }
            return new JsonResult("No matching records found");


        }
    }
}
