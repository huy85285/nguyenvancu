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
    
    public partial class historycart
    {
        public historycart()
        {
            this.detailhistorycarts = new HashSet<detailhistorycart>();
        }
    
        public int Id { get; set; }
        public string iduser { get; set; }
        public System.DateTime datecart { get; set; }
        public Nullable<bool> iscomplete { get; set; }
    
        public virtual ICollection<detailhistorycart> detailhistorycarts { get; set; }
        public virtual USER USER { get; set; }
    }
}