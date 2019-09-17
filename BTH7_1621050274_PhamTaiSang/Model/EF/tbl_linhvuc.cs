namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_linhvuc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_linhvuc()
        {
            tbl_doan = new HashSet<tbl_doan>();
        }

        [Key]
        public byte Malv { get; set; }

        [StringLength(150)]
        public string Tenlv { get; set; }

        [StringLength(150)]
        public string Ghichu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_doan> tbl_doan { get; set; }
    }
}
