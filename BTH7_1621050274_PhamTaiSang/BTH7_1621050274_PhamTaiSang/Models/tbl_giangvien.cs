namespace BTH7_1621050274_PhamTaiSang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_giangvien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_giangvien()
        {
            tbl_doan = new HashSet<tbl_doan>();
            tbl_doan1 = new HashSet<tbl_doan>();
        }

        [Key]
        [StringLength(6)]
        public string Magv { get; set; }

        [StringLength(50)]
        public string Tengv { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Namsinh { get; set; }

        public bool? Gioitinh { get; set; }

        [StringLength(20)]
        public string Hocvi { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [StringLength(50)]
        public string Dienthoai { get; set; }

        [StringLength(200)]
        public string Diachi { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_doan> tbl_doan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_doan> tbl_doan1 { get; set; }
    }
}
