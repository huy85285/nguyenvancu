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
    
    public partial class detailproduct
    {
        public int idproduct { get; set; }
        public int idproperties { get; set; }
        public string datas { get; set; }
    
        public virtual product product { get; set; }
        public virtual property property { get; set; }
    }
}
