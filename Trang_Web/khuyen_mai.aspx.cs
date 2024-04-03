using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trang_Web_khuyen_mai : System.Web.UI.Page
{
    private void xuatban_tin()
    {
        thuvien tv = new thuvien("KHUYENMAI", "");
        tv.xuat_thong_tin();
        DataList1.DataSource = tv.Dt;
        DataList1.DataKeyField = "MAKM";
        DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            xuatban_tin();  
    }

    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Trang_Web/noidungtintuc.aspx?MAKM=" + DataList1.DataKeys.ToString());
    }
   
}