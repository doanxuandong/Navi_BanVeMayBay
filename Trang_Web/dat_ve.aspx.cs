using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;
using System.Text;
public partial class Trang_Web_dat_ve : System.Web.UI.Page
{
    private void xuat_bang_ttdatve(int sodong)
    {
        DataTable bangdl = new DataTable();
        //tao 1 cot
        bangdl.Columns.Add("STT", Type.GetType("System.Int32"));//pham vi stt
        bangdl.Columns.Add("Họ Tên", Type.GetType("System.String"));
        bangdl.Columns.Add("Ngày Sinh", Type.GetType("System.String"));
        bangdl.Columns.Add("Số điện thoại", Type.GetType("System.Double"));//kieeu so
        bangdl.Columns.Add("Địa Chỉ", Type.GetType("System.String"));
        //bangdl.Columns.Add("thanhtien", Type.GetType("System.Double"));
        // bangdl.Rows.Add("")
        for (int i = 0; i < sodong; i++)
        {
            DataRow dong = bangdl.NewRow();
            dong["STT"] = i + 1;
            bangdl.Rows.Add(dong);

        }
        bangdl.AcceptChanges();//chap nhan su thay doi
        ViewState["bang_tam"] = bangdl;
        DataGrid1.DataSource = bangdl;
        DataGrid1.DataBind();
    }
    private void them_khachhang()
    {
        string hoten = TextBox1.Text;
        string ngaysinh = TextBox2.Text;
        string sodienthoai = TextBox3.Text;// .FileName neu la hinh
        string diachi = TextBox4.Text;
        string hinhthucthanhtoan = RadioButtonList1.Text;
        thuvien tv = new thuvien("DM_KHACHHANG", "");
        tv.xuat_thong_tin();
        DataRow dongmoi = tv.Dt.NewRow();
        
        dongmoi["HOTEN"] = hoten;
        dongmoi["NGAYSINH"] = ngaysinh;
        dongmoi["SDT"] = sodienthoai;
        dongmoi["DIACHI"] = diachi;
        dongmoi["HINHTHUCTHANHTOAN"] = hinhthucthanhtoan;
        tv.Dt.Rows.Add(dongmoi);
        tv.cap_nhat();
        //----tim ma khach hang moi
        string lenh_tim = "select top 1 * from DM_KHACHHANG order by MAKHACHHANG desc";
        thuvien tv_tim = new thuvien("",lenh_tim);
        tv_tim.xuat_thong_tin();
        string ma_khachhang = tv_tim.Dt.DefaultView[0]["MAKHACHHANG"].ToString();
        tv_tim.Dt.Rows[0]["MALIENHE"] = ma_khachhang;
        tv_tim.cap_nhat();
        //--them dat cho(dat ve)

        string ma_chuyenbay = Request.QueryString["MACHUYENBAY"].ToString();
        int so_cho = int.Parse(Session["tongsonguoi"].ToString())+1;
        thuvien tv_them = new thuvien("DATCHO", "");
        tv_them.xuat_thong_tin();

        DataRow them_moi = tv_them.Dt.NewRow();
        them_moi["MAKHACHHANG"] = ma_khachhang;
        them_moi["MACHUYENBAY"] = ma_chuyenbay;
        them_moi["SOCHO"] = so_cho;
        them_moi["NGAYDATCHO"] = DateTime.Today;
        tv_them.Dt.Rows.Add(them_moi);
        tv_them.cap_nhat();
        //tim ma dat cho
        

        string lenh_tim_madatcho = "select top 1 * from DATCHO order by MADATCHO desc";
        thuvien tv_tim_madatcho = new thuvien("",lenh_tim_madatcho);
        tv_tim_madatcho.xuat_thong_tin();
        string ma_datcho = tv_tim_madatcho.Dt.DefaultView[0]["MADATCHO"].ToString();
        //goi ma dat choo vao mail
        Label12.Text = "Mã đặt chỗ của quý khách là:" + ma_datcho + ".Khách hàng xin vui lòng thanh toán để nhận code vé";
        Label12.Visible = true;
        //gialap



        //----cap nhat khach hang di cung
        TextBox HOTEN = new TextBox();
        TextBox NGAYSINH = new TextBox();
        TextBox DIACHI = new TextBox();
        TextBox SDT = new TextBox();

        for (int i = 0; i < DataGrid1.Items.Count; i++)
        {
            HOTEN = (TextBox)DataGrid1.Items[i].FindControl("TextBox5");
            NGAYSINH = (TextBox)DataGrid1.Items[i].FindControl("TextBox6");
            SDT = (TextBox)DataGrid1.Items[i].FindControl("TextBox7");
            DIACHI = (TextBox)DataGrid1.Items[i].FindControl("TextBox8");
            if (HOTEN.Text != "")//bat buooc phai co ho ten moi dn
            {
                DataRow khach_dicung = tv.Dt.NewRow();
                khach_dicung["HOTEN"] = HOTEN.Text;
                khach_dicung["NGAYSINH"] = NGAYSINH.Text;
                khach_dicung["SDT"] = SDT.Text;
                khach_dicung["DIACHI"] = DIACHI.Text;
                khach_dicung["MALIENHE"] = ma_khachhang;
                tv.Dt.Rows.Add(khach_dicung);
                tv.cap_nhat();
            }
        }

    }

    private void xuat_rong()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            Label11.Text = Session["diemdi"].ToString() + "<br/>" + Session["diemden"].ToString() + "<br/>" + Session["ngaybay"].ToString();
            int sodong= int.Parse( Session["tongsonguoi"].ToString());
            xuat_bang_ttdatve(sodong);//5 la hien thi 5 dong

            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        them_khachhang();
        xuat_rong();
        int sodong = int.Parse(Session["tongsonguoi"].ToString());
        xuat_bang_ttdatve(sodong);//5 la hien thi 5 dong
        
    }
}