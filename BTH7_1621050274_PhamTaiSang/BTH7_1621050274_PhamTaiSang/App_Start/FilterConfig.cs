using System.Web;
using System.Web.Mvc;

namespace BTH7_1621050274_PhamTaiSang
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
