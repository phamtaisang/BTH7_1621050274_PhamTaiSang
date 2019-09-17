namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_khoahoc
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_khoahoc()
        {
            tbl_sinhvien = new HashSet<tbl_sinhvien>();
        }

        [Key]
        public byte Makh { get; set; }

        [StringLength(10)]
        public string Tenkhoa { get; set; }

        [StringLength(50)]
        public string Thoigian { get; set; }

        [StringLength(50)]
        public string Ghichu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_sinhvien> tbl_sinhvien { get; set; }
    }
}
