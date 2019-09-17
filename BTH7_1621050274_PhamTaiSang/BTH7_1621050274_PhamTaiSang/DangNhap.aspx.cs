using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTH7_1621050274_PhamTaiSang
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dangnhap_Click(object sender, EventArgs e)
        {
            if (System.Web.Security.FormsAuthentication.Authenticate(txt_dangnhap.Text, txt_matkhau.Text) == true)
            {
                var link = "/trang-chu";
                Session["role"] = true;
                Session["admin"] = txt_dangnhap.Text;
                Response.Redirect(link);
            }
            else
            {
                Response.Write("<script>alert('Đăng nhập không thành công!!')</script>");
            }
        }
    }
}