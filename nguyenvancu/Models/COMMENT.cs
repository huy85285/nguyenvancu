//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace nguyenvancu.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class COMMENT
    {
        public int idproduct { get; set; }
        public string iduser { get; set; }
        public double RATE { get; set; }
        public string COMMENT1 { get; set; }
    
        public virtual product product { get; set; }
        public virtual USER USER { get; set; }
    }
}
