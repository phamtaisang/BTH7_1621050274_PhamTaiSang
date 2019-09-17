namespace BTH7_1621050274_PhamTaiSang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_sinhvien
    {
        [Key]
        [StringLength(10)]
        public string Masv { get; set; }

        [StringLength(50)]
        public string Tensv { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Namsinh { get; set; }

        public bool? Gioitinh { get; set; }

        public byte? Khoa { get; set; }

        public byte? Chuyennganh { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [StringLength(50)]
        public string Dienthoai { get; set; }

        [StringLength(200)]
        public string Diachi { get; set; }

        [StringLength(150)]
        public string Ghichu { get; set; }

        public virtual tbl_chuyennganh tbl_chuyennganh { get; set; }

        public virtual tbl_khoahoc tbl_khoahoc { get; set; }
    }
}
