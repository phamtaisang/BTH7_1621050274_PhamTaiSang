namespace BTH7_1621050274_PhamTaiSang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_chuyennganh
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_chuyennganh()
        {
            tbl_sinhvien = new HashSet<tbl_sinhvien>();
        }

        [Key]
        public byte Macn { get; set; }

        [StringLength(50)]
        public string Tencn { get; set; }

        [StringLength(150)]
        public string Ghichu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_sinhvien> tbl_sinhvien { get; set; }
    }
}
