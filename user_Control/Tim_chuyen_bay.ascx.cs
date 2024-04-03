using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class user_Control_Tim_chuyen_bay : System.Web.UI.UserControl
{
    private void XUAT_DIEMDI()
    {
        string lenh_xuat1 = "select MASB,TENSB+' ('+MASB+')' AS TEN_SB from DANHMUCSANBAY";
        thuvien tv1 = new thuvien("", lenh_xuat1);
        tv1.xuat_thong_tin();
        DropDownList1.DataSource = tv1.Dt;
        DropDownList1.DataTextField = "TEN_SB";
        DropDownList1.DataValueField = "MASB";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, "Chọn điểm đi");
        DropDownList1.SelectedIndex = 0;
    }
    private void XUAT_DIEMDEN()
    {
        string lenh_xuat2 = "select MASB,TENSB+' ('+MASB+')' AS TEN_SB from DANHMUCSANBAY";
        thuvien tv2 = new thuvien("", lenh_xuat2);
        tv2.xuat_thong_tin();
        DropDownList2.DataSource = tv2.Dt;
        DropDownList2.DataTextField = "TEN_SB";
        DropDownList2.DataValueField = "MASB";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "Chọn điểm đến");
        DropDownList2.SelectedIndex = 0;
    }
    private void XUAT_NGUOILON()
    {
        for (int i = 0; i <= 10; i++)
        {
            DropDownList3.Items.Insert(i, i.ToString());            
        }
        
    }
    private void XUAT_TREEM()
    {
        for (int i = 0; i <= 5; i++)
        {
            DropDownList4.Items.Insert(i, i.ToString()); //chay tu 0
            //DropDownList4.Items.Insert(i - 1, i.ToString());      //chay tu 1     
            //DropDownList4.Items.Insert(0, "tre em");//co them 
            //DropDownList4.SelectedIndex = 0;
        }
       
    }
    private void XUAT_EMBE()
    {
        for (int i = 0; i <= 5; i++)
        {
            DropDownList5.Items.Insert(i, i.ToString());            
        }
    }
    private int  kiemtraloi()
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        int thongbao = 0;
        if (DropDownList1.SelectedIndex == 0)
        {
            Label1.Visible = true;
            return 1;
        }
        if (DropDownList2.SelectedIndex == 0)
        {
            Label2.Visible = true;
            return 2;
        }
        if (TextBox1.Text =="")
        {
            Label3.Visible = true;
            return 3;
        }
        if (DropDownList1.SelectedValue == DropDownList2.SelectedValue)
        {
            Label4.Visible = true;
            return 4;
        }
        string ngay_hienhanh = DateTime.Today.ToString();
        if (DateTime.Parse(TextBox1.Text) <DateTime.Parse( DateTime.Today.ToString("dd/MM/yyyy")))
        {
            Label5.Visible = true;
            return 5;
        }
        return thongbao;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            XUAT_DIEMDI();
            XUAT_DIEMDEN();
            XUAT_NGUOILON();
            XUAT_TREEM();
            XUAT_EMBE();   
        

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (kiemtraloi() == 0)
        {

            Session["diemdi"] = "Điểm đi từ: " + DropDownList1.SelectedItem.Text;
            Session["diemden"] = "Điểm đến: " + DropDownList2.SelectedItem.Text;
            Session["ngaybay"] = "Ngày bay: " + TextBox1.Text;


            DateTime ngay_di = DateTime.Parse(TextBox1.Text);
            Session["ngaychon"] = TextBox1.Text;
            DateTime ngay_hienhanh = DateTime.Today;
            TimeSpan so_ngay = ngay_di - ngay_hienhanh;
            int khoangcachngay = so_ngay.Days;
            Session["tong_ngay"] = khoangcachngay;

            Session["tongsonguoi"] =int.Parse( DropDownList3.SelectedValue)+int.Parse(DropDownList4.SelectedValue)+int.Parse( DropDownList5.SelectedValue);
            string x = Session["tongsonguoi"].ToString();

            string chuoi_trave = " and DIEMDI='" + DropDownList1.SelectedValue + "' and DIEMDEN='" + DropDownList2.SelectedValue + "' and convert (varchar(10),NGAYGIOBAY,103)='" + TextBox1.Text + "'";
            Response.Redirect("~/Trang_Web/Tim_chuyenbay.aspx?chuoi_trave=" + chuoi_trave);// ? tra ve gia tri
        }
    }
}