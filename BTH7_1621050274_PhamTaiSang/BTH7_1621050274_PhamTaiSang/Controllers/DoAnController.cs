using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BTH7_1621050274_PhamTaiSang.Models;
namespace BTH7_1621050274_PhamTaiSang.Controllers
{
    public class DoAnController : Controller
    {
        // GET: DoAn
        Model db = new Model();
    
        public ActionResult Index()
        {
            var DoAn = (from d in db.tbl_doan select d).ToList();
            ViewBag.DoAn = DoAn;
            return View();
        }
    }
}