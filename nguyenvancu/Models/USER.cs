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
    
    public partial class USER
    {
        public USER()
        {
            this.carts = new HashSet<cart>();
            this.COMMENTs = new HashSet<COMMENT>();
            this.historycarts = new HashSet<historycart>();
            this.products = new HashSet<product>();
        }
    
        public string id { get; set; }
        public string passwords { get; set; }
        public string lastname { get; set; }
        public string firstname { get; set; }
        public string addressid { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string rank { get; set; }
        public Nullable<System.DateTime> datecreate { get; set; }
        public bool is_active { get; set; }
        public Nullable<int> idImg { get; set; }
    
        public virtual ICollection<cart> carts { get; set; }
        public virtual ICollection<COMMENT> COMMENTs { get; set; }
        public virtual ICollection<historycart> historycarts { get; set; }
        public virtual IMG IMG { get; set; }
        public virtual ICollection<product> products { get; set; }
    }
}
