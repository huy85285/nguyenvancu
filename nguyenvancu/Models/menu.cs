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
    
    public partial class menu
    {
        public menu()
        {
            this.menu1 = new HashSet<menu>();
            this.products = new HashSet<product>();
        }
    
        public int id { get; set; }
        public string names { get; set; }
        public bool is_active { get; set; }
        public int lv { get; set; }
        public Nullable<int> menuownerid { get; set; }
    
        public virtual ICollection<menu> menu1 { get; set; }
        public virtual menu menu2 { get; set; }
        public virtual ICollection<product> products { get; set; }
        public bool is_farther(int id)
        {
            if (this.id==id)
            {
                return true;
            }
            else if (this.lv==1)
            {
                return false;
            }
            else
            {
                return this.menu2.is_farther(id);
            }
        }
    }
}
