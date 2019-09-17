using BTH7_1621050274_PhamTaiSang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BTH7_1621050274_PhamTaiSang.Controllers
{
    
    public class SinhVienController : Controller
    {
        // GET: SinhVien
        private Model db = new Model();
        public ActionResult Index()
        {
            var sinhvien = (from sv in db.tbl_sinhvien select sv).ToList();

            ViewBag.sinhvien = sinhvien;
            return View();
        }
        public ActionResult chitiet(string id)
        {
            //ViewBag.id = id;
            var sinhvien = (from sv in db.tbl_sinhvien  where sv.Masv == id select sv).ToList();
            ViewBag.sinhvien = sinhvien;
            return View();
        }
        public ActionResult sua(string id)
        {
            //ViewBag.id = id;
            var sinhvien = (from sv in db.tbl_sinhvien where sv.Masv == id select sv).ToList();
            ViewBag.sinhvien = sinhvien;
            return View();
        }
        [HttpGet]
        public ActionResult xoa(string id)
        {
            tbl_sinhvien sv = db.tbl_sinhvien.Find(id);
            db.tbl_sinhvien.Remove(sv);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult TimKiem(string searchString)
        {
            //ViewBag.timkiem = searchString;
            var links = from l in db.tbl_sinhvien // lấy toàn bộ liên kết
                        select l;

            if (!String.IsNullOrEmpty(searchString)) // kiểm tra chuỗi tìm kiếm có rỗng/null hay không
            {
                links = links.Where(s => s.Tensv.Contains(searchString)); //lọc theo chuỗi tìm kiếm
            }
         
            ViewBag.show = links;
            return View();
        }
    }
}