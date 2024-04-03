using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Trang_Web_Lien_he : System.Web.UI.Page
{

    private void xuat_thongtin_codeve(string ma_datcho)
    {

        thuvien tv = new thuvien("", "select * from DM_CODEVE where MADATCHO=" + ma_datcho);
        tv.xuat_thong_tin();
        if (tv.Dt.DefaultView.Count > 0)
        {
            tv.Dt.Columns.Add("STT", Type.GetType("System.Int32"));//pham vi stt
            for (int i = 0; i < tv.Dt.DefaultView.Count; i++)
            {
                tv.Dt.DefaultView[i]["STT"] = i + 1;

            }
            tv.Dt.AcceptChanges();
            DataGrid1.DataSource = tv.Dt;
            DataGrid1.DataBind();
            Label5.Visible = false;
        }
        else
        {
            Label5.Text = "Qúy khách vui lòng thanh toán để nhận code vé";
            Label5.Visible = true;
            DataGrid1.DataSource = null;
            DataGrid1.DataBind();
        }
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        xuat_thongtin_codeve(TextBox1.Text);
        
    }
}