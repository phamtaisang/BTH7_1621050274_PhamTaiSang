namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class tbl_doan
    {
        [Key]
        [StringLength(10)]
        public string Masv { get; set; }

        [StringLength(400)]
        public string Tenda { get; set; }

        [StringLength(6)]
        public string GVHD { get; set; }

        [StringLength(6)]
        public string GVPB { get; set; }

        public byte? linhvuc { get; set; }

        public decimal? Diem { get; set; }

        public short? Namtn { get; set; }

        public virtual tbl_giangvien tbl_giangvien { get; set; }

        public virtual tbl_giangvien tbl_giangvien1 { get; set; }

        public virtual tbl_linhvuc tbl_linhvuc { get; set; }
    }
}
