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
    
    public partial class IMG
    {
        public IMG()
        {
            this.ADMINS = new HashSet<ADMIN>();
            this.companies = new HashSet<company>();
            this.USERS = new HashSet<USER>();
        }
    
        public int id { get; set; }
        public string link { get; set; }
        public string ten { get; set; }
        public string owner_id { get; set; }
        public string tableowner { get; set; }
        public string mota { get; set; }
        public Nullable<int> id_LIST_IMG { get; set; }
    
        public virtual ICollection<ADMIN> ADMINS { get; set; }
        public virtual ICollection<company> companies { get; set; }
        public virtual ICollection<USER> USERS { get; set; }
        public virtual LIST_IMG LIST_IMG { get; set; }
    }
}
