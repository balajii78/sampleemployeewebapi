using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Employeewebapi.Models;

namespace Employeewebapi.Controllers
{
    [RoutePrefix("Api/Employees")]
    public class EmployeeController : ApiController
    { 

        employeeEntities objemployeeEntity = new employeeEntities();

        [HttpGet]
        [Route("GetAllEmployees")]
        public IQueryable<Employee> GetEmployeeDetails()

        {
            try
            {

                return objemployeeEntity.Employees;

            }
            catch (Exception)
            {
                throw;
            }



        }

        [HttpGet]
        [Route("GetEmployeeDetailsById")]
        public IHttpActionResult GetEmployeeDetailsById(int id)
        {
            Employee objEmployee = objemployeeEntity.Employees.Find(id);
            try
            {
                if (objEmployee == null)
                    return NotFound();


            }
            catch (Exception)
            {
                throw;
            }

            return Ok(objEmployee);


        }

        [HttpPost]
        [Route("Addemployee")]
        public IHttpActionResult AddEmployee(Employee objEmployeeData)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            try
            {

                objemployeeEntity.Employees.Add(objEmployeeData);
                objemployeeEntity.SaveChanges();

            }

            catch (Exception)
            {
                throw;
            }

            return Ok();

        }

        [HttpDelete]
        [Route("DeleteEmployee")]
        public IHttpActionResult DeleteEmployee(int id)
        {

            try
            {

                Employee objEmployee = objemployeeEntity.Employees.Find(id);
                if (objEmployee == null)
                {
                    return NotFound();
                }
                objemployeeEntity.Employees.Remove(objEmployee);
                objemployeeEntity.SaveChanges();
                return Ok();

            }

            catch (Exception)
            {
                throw;
            }

        }

        [HttpPut]
        [Route("UpdateEmployee")]
        public IHttpActionResult UpdateEmployee(Employee EmployeeData)
        {

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            try {

                Employee objemployee = new Employee();
                objemployee = objemployeeEntity.Employees.Find(EmployeeData.Empid);
                if(objemployee != null)
                {

                    // objemployee.AssociateID = EmployeeData.AssociateID;
                    
                    objemployee.Name = EmployeeData.Name;
                    objemployee.DOB = EmployeeData.DOB;
                    objemployee.Emailid = EmployeeData.Emailid;
                    objemployee.EmpAddress = EmployeeData.EmpAddress;
                    objemployee.Gender = EmployeeData.Gender;
                    objemployee.Salary = EmployeeData.Salary;

                }

                objemployeeEntity.SaveChanges();

              }
            catch (Exception)
            {
                throw;
                

            }


            return Ok();
        }

    }

}
