//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Employeewebapi.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employee
    {
        public long Empid { get; set; }
        public Nullable<long> AssociateID { get; set; }
        public string Name { get; set; }
        public Nullable<System.DateTime> DOB { get; set; }
        public string Emailid { get; set; }
        public string EmpAddress { get; set; }
        public string Gender { get; set; }
        public Nullable<decimal> Salary { get; set; }
    }
}