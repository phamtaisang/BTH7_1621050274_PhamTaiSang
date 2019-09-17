using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace BTH7_1621050274_PhamTaiSang
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
               name: "Danh sach chuyen nganh",
               url: "chuyen-nganh/{MetaTitle}-{id}",
               defaults: new { controller = "TrangChu", action = "getDanhsach", id = UrlParameter.Optional }
           );
            routes.MapRoute(
               name: "chi tiet sinh vien",
               url: "sinh-vien/{MetaTitle}-{id}",
               defaults: new { controller = "SinhVien", action = "chitiet", id = UrlParameter.Optional }
           );
            routes.MapRoute(
              name: "sua sinh vien",
              url: "sua-sinh-vien/{MetaTitle}-{id}",
              defaults: new { controller = "SinhVien", action = "sua", id = UrlParameter.Optional }
          );
            routes.MapRoute(
              name: "xoa sinh vien",
              url: "xoa-sinh-vien/{MetaTitle}-{id}",
              defaults: new { controller = "SinhVien", action = "xoa", id = UrlParameter.Optional }
          );
            routes.MapRoute(
             name: "Sinh vien",
             url: "sinh-vien",
             defaults: new { controller = "SinhVien", action = "index", id = UrlParameter.Optional }
         );
            routes.MapRoute(
             name: "trang chu",
             url: "trang-chu",
             defaults: new { controller = "TrangChu", action = "index", id = UrlParameter.Optional }
         );
            routes.MapRoute(
            name: "giang vien",
            url: "giang-vien",
            defaults: new { controller = "GiangVien", action = "index", id = UrlParameter.Optional }
        );
            routes.MapRoute(
            name: "đồ án",
            url: "do-an",
            defaults: new { controller = "DoAn", action = "index", id = UrlParameter.Optional }
        );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
         
        }
    }
}
