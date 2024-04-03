using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//them 
using System.Data;
using System.Xml;
public partial class user_Control_menu_quantri : System.Web.UI.UserControl
{
    private void xuat_thongtin()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/XML/menu_quantri.xml"));
        DataList1.DataSource = ds.Tables[0];
        DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            xuat_thongtin();
    }
}