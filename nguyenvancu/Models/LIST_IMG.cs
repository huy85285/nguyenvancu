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
    
    public partial class LIST_IMG
    {
        public LIST_IMG()
        {
            this.IMGs = new HashSet<IMG>();
            this.products = new HashSet<product>();
        }
    
        public int id { get; set; }
        public string @class { get; set; }
        public string id_user { get; set; }
        public Nullable<System.DateTime> date_update { get; set; }
    
        public virtual ICollection<IMG> IMGs { get; set; }
        public virtual ICollection<product> products { get; set; }
    }
}
