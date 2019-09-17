using BTH7_1621050274_PhamTaiSang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BTH7_1621050274_PhamTaiSang.Controllers
{
    public class TrangChuController : Controller
    {
        // GET: TrangChu
        Model db = new Model();

        public object Home { get; private set; }

        public ActionResult Index()
        {

            List<tbl_sinhvien> sinhvien = (from sv in db.tbl_sinhvien select sv).ToList();
            List<tbl_giangvien> giangvien = (from gv in db.tbl_giangvien select gv).ToList();
            List<tbl_doan> doan = (from da in db.tbl_doan select da).ToList();
            List<tbl_chuyennganh> nganh = (from p in db.tbl_chuyennganh select p).ToList();
            int demcn = (from p in db.tbl_chuyennganh select p).ToList().Count;
            int demsv = sinhvien.Count;
            int demgv = giangvien.Count;
            int demda = doan.Count;
            ViewBag.demcn = demcn;
            ViewBag.demsv = demsv;
            ViewBag.demgv = demgv;
            ViewBag.demda = demda;
            ViewBag.nganh = nganh;
            ViewBag.doan = doan;
            return View();           
        }
        public ActionResult getDanhsach(int id)
        {
            var sinhvien = ( from sv in db.tbl_sinhvien
                             join k in db.tbl_khoahoc on sv.Khoa equals k.Makh
                             join c in db.tbl_chuyennganh on sv.Chuyennganh equals c.Macn
                             where c.Macn == id
                             select sv).ToList();
            int dem = sinhvien.Count;
            ViewBag.dem = dem;
            ViewBag.sinhvien = sinhvien;
            return View();
        }

        public ActionResult test()
        {
            var khoa = db.tbl_khoahoc.ToList();
            return View(khoa);
        }
        public ActionResult ThemKhoaHoc()
        {
            
            return View();
        }
        [HttpPost]
        public ActionResult ThemKhoaHoc(tbl_khoahoc kh)
        {
            db.tbl_khoahoc.Add(kh);
            db.SaveChanges();
            return RedirectToAction("test");
        }
    }
}