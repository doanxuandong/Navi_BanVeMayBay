using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trang_Web_chitiet : System.Web.UI.Page
{
    private void xuat_noidung()
    {
        string lenh_xuat = "select * from KHUYENMAI where MAKM="+Request.QueryString["MAKM"].ToString();
        thuvien tv = new thuvien("",lenh_xuat);
        tv.xuat_thong_tin();
        Label1.Text = tv.Dt.DefaultView[0]["CHITIET"].ToString();

       
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        xuat_noidung();
    }
}