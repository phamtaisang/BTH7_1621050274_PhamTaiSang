<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="BTH7_1621050274_PhamTaiSang.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Assets/1.css" rel="stylesheet" />
    <title>Đăng nhập</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <div class="box">
            <h3>Hệ thống quản lý thông tin</h3>
            <h5>Login</h5>
            Tên đăng nhập :
            <p><asp:TextBox ID="txt_dangnhap" runat="server"></asp:TextBox></p>
            Mật khẩu :
            <p><asp:TextBox ID="txt_matkhau" runat="server"></asp:TextBox></p>
            <p><asp:Button ID="btn_dangnhap" runat="server" Text="Đăng Nhập Hệ Thống" OnClick="btn_dangnhap_Click"  /></p>
            
        </div>
        </div>
    </form>
</body>
</html>
