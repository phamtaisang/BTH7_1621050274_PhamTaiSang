using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTH7_1621050274_PhamTaiSang.Models;

namespace BTH7_1621050274_PhamTaiSang.Controllers
{
  
    public class GiangVienController : Controller
    {
        Model db = new Model();
        private object sv;

        // GET: GiangVien
        public ActionResult Index()
        {
            var gv = (from g in db.tbl_giangvien select g).ToList();
            ViewBag.gv = gv;
            return View();
        }
    }
}