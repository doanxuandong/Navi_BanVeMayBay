using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Trang_Web_thanhtoan : System.Web.UI.Page
{
    private void xuat_thanhtoan_nganhang()
    {
        thuvien tv = new thuvien("DM_NGANHANG", "");
        tv.xuat_thong_tin();
        DataList1.DataSource = tv.Dt;
        DataList1.DataBind();
    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    private void xuat_luoi_thanhtoan(int sodong,string ten_nganhang)
    {
        DataTable bangdl = new DataTable();
        //tao 1 cot
        bangdl.Columns.Add("TENNGANHANG", Type.GetType("System.String"));//pham vi stt
        bangdl.Columns.Add("MADATCHO", Type.GetType("System.Int32"));
       
        for (int i = 0; i < sodong; i++)
        {

            DataRow dong = bangdl.NewRow();
            dong["TENNGANHANG"] = ten_nganhang;
            bangdl.Rows.Add(dong);

        }
        bangdl.AcceptChanges();//chap nhan su thay doi
        DataGrid1.DataSource = bangdl;
        DataGrid1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string lenhtim_nganhang = "select * from DM_NGANHANG where TENDANGNHAP='" + TextBox1.Text + "' and MATKHAU='"+TextBox1.Text+"'";
        thuvien tv_timng = new thuvien("",lenhtim_nganhang);
        tv_timng.xuat_thong_tin();
        if (tv_timng.Dt.DefaultView.Count > 0)
        {
            Session["MANGANHANG"] = tv_timng.Dt.DefaultView[0]["MANGANHANG"].ToString();
            string ten_nganhang = tv_timng.Dt.DefaultView[0]["TENNGANHANG"].ToString();
            Panel2.Visible = true;
            xuat_luoi_thanhtoan(5, ten_nganhang);
            Panel1.Visible = false;

        }
        else
        {
            Label5.Text = "Tên đăng nhập hoặc mật khẩu chưa đúng";
            Label5.Visible = true;
        }



    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            xuat_thanhtoan_nganhang();
           

        }

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox ma_datcho = new TextBox();
        CheckBox da_thanh_toan = new CheckBox();
        for (int i = 0; i < DataGrid1.Items.Count; i++)
        {
            ma_datcho = (TextBox)DataGrid1.Items[i].FindControl("TextBox3");
            da_thanh_toan = (CheckBox)DataGrid1.Items[i].FindControl("CheckBox1");
            if (ma_datcho.Text != "")
            {
                string thanh_toan = "0";
                if (da_thanh_toan.Checked)
                    thanh_toan = "1";
                string lenh_capnhat = "update DATCHO set MANGANHANG=" + Session["MANGANHANG"].ToString() + ",DATHANHTOAN=" + thanh_toan+ " where MADATCHO=" + ma_datcho.Text;
                thuvien tv = new thuvien("DATCHO", "");
                tv.xuat_thong_tin();
                string tb_loi = "";
                tv.cap_nhat(lenh_capnhat, ref tb_loi);
                //----
                string lenhtim_madatcho = "select * from DM_CODEVE where MADATCHO=" + ma_datcho.Text;
                thuvien tv_tim_madatcho = new thuvien("",lenhtim_madatcho);
                tv_tim_madatcho.xuat_thong_tin();
                if (tv_tim_madatcho.Dt.DefaultView.Count <= 0)
                {
                    //----
                    for (int k = 0; k <= int.Parse(Session["tongsonguoi"].ToString()); k++)
                    {
                        string lenh_them_codeve = "insert into DM_CODEVE (MADATCHO) values (" + ma_datcho.Text + ")";
                        tv.cap_nhat(lenh_them_codeve, ref tb_loi);
                    }
                }
            }
        }
    }
}