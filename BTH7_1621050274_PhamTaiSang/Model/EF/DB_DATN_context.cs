namespace Model.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DB_DATN_context : DbContext
    {
        public DB_DATN_context()
            : base("name=DB_DATN")
        {
        }

        public virtual DbSet<tbl_chuyennganh> tbl_chuyennganh { get; set; }
        public virtual DbSet<tbl_doan> tbl_doan { get; set; }
        public virtual DbSet<tbl_giangvien> tbl_giangvien { get; set; }
        public virtual DbSet<tbl_khoahoc> tbl_khoahoc { get; set; }
        public virtual DbSet<tbl_linhvuc> tbl_linhvuc { get; set; }
        public virtual DbSet<tbl_sinhvien> tbl_sinhvien { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tbl_chuyennganh>()
                .HasMany(e => e.tbl_sinhvien)
                .WithOptional(e => e.tbl_chuyennganh)
                .HasForeignKey(e => e.Chuyennganh);

            modelBuilder.Entity<tbl_doan>()
                .Property(e => e.Masv)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<tbl_doan>()
                .Property(e => e.GVHD)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<tbl_doan>()
                .Property(e => e.GVPB)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<tbl_doan>()
                .Property(e => e.Diem)
                .HasPrecision(3, 1);

            modelBuilder.Entity<tbl_giangvien>()
                .Property(e => e.Magv)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<tbl_giangvien>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_giangvien>()
                .Property(e => e.Dienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_giangvien>()
                .HasMany(e => e.tbl_doan)
                .WithOptional(e => e.tbl_giangvien)
                .HasForeignKey(e => e.GVHD);

            modelBuilder.Entity<tbl_giangvien>()
                .HasMany(e => e.tbl_doan1)
                .WithOptional(e => e.tbl_giangvien1)
                .HasForeignKey(e => e.GVPB);

            modelBuilder.Entity<tbl_khoahoc>()
                .HasMany(e => e.tbl_sinhvien)
                .WithOptional(e => e.tbl_khoahoc)
                .HasForeignKey(e => e.Khoa);

            modelBuilder.Entity<tbl_linhvuc>()
                .HasMany(e => e.tbl_doan)
                .WithOptional(e => e.tbl_linhvuc)
                .HasForeignKey(e => e.linhvuc);

            modelBuilder.Entity<tbl_sinhvien>()
                .Property(e => e.Masv)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<tbl_sinhvien>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<tbl_sinhvien>()
                .Property(e => e.Dienthoai)
                .IsUnicode(false);
        }
    }
}
