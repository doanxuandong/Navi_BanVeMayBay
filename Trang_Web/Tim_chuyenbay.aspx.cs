using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Trang_Web_Tim_chuyenbay : System.Web.UI.Page
{
    private void xuat_chuyenbay()
    {
        String lenhxuat = "select DMCHUYENBAY.MACHUYENBAY,DM_HANGHANGKHONG.LOGO,DMCHUYENBAY.TENCHUYENBAY,DMCHUYENBAY.NGAYGIOBAY,DMCHUYENBAY.GIAVE,DMCHUYENBAY.CHITIET from DMCHUYENBAY,DM_HANGHANGKHONG where DMCHUYENBAY.MAHANGHANGKHONG=DM_HANGHANGKHONG.MAHANGHANGKHONG and convert (varchar(10),NGAYGIOBAY,103)=convert (varchar(10),getdate(),103) order by DMCHUYENBAY.GIAVE";
        if (Request.QueryString["chuoi_trave"] != null)
        {
            int do_dai = lenhxuat.Length;
            lenhxuat = lenhxuat.Substring(0, do_dai - 103) + Request.QueryString["chuoi_trave"].ToString() + " order by DMCHUYENBAY.GIAVE";
        }
        Session["lenh_timchuyenbay"] = lenhxuat;
        thuvien tv = new thuvien("", lenhxuat);
        tv.xuat_thong_tin();
        if (tv.Dt.DefaultView.Count > 0)
        {
            DataList2.DataSource = tv.Dt;
            DataList2.DataKeyField = "MACHUYENBAY";
            DataList2.DataBind();
            DataList1.SelectedIndex = 3;////doan nay thu
            if (Session["diemdi"].ToString() != "" && Session["diemden"].ToString() != "" && Session["ngaybay"].ToString() != "")
            {
                Label16.Text = Session["diemdi"].ToString() + "<br/>" + Session["diemden"].ToString() + "<br/>" + Session["ngaybay"].ToString();

                Label16.Text += "</br> " + "Danh Sách Các Chuyến Bay";
            }
        }
        else
        {
            if (Session["diemdi"].ToString() != "" && Session["diemden"].ToString() != "" && Session["ngaybay"].ToString() != "")
            {
                Label16.Text = Session["diemdi"].ToString() + "<br/>" + Session["diemden"].ToString() + "<br/>" + Session["ngaybay"].ToString();

                Label16.Text += "</br> " + "Hiện tại chưa có lịch bay";
            }
        }
    }
    private void xuat_thu()
    {
        DataTable luu_ngay = new DataTable();
        DataColumn cot_ngay = new DataColumn("Ngay", Type.GetType("System.String"));
        DataColumn cot_thu = new DataColumn("Thu", Type.GetType("System.String"));

        luu_ngay.Columns.Add(cot_ngay);
        luu_ngay.Columns.Add(cot_thu);
        string ngay = "";
        for (int i = -3; i <= 3; i++)
        {
            DataRow dong = luu_ngay.NewRow();
            if (Session["ngaychon"].ToString() == "")
            {
                dong[0] = DateTime.Today.AddDays(i).ToString("dd/MM/yyyy");
                ngay = DateTime.Today.ToString ();
            }
            else
            {
                dong[0] = DateTime.Parse(Session["ngaychon"].ToString()).AddDays(i).ToString("dd/MM/yyyy");
                ngay=Session["ngaychon"].ToString();
            }
            string thu_trong_tuan = "";
            switch (DateTime.Parse(ngay).AddDays(i).DayOfWeek)
            {
                case DayOfWeek.Monday:
                    thu_trong_tuan = "Thứ 2";
                    break;
                case DayOfWeek.Tuesday:
                    thu_trong_tuan = "Thứ 3";
                    break;
                case DayOfWeek.Wednesday:
                    thu_trong_tuan = "Thứ 4";
                    break;
                case DayOfWeek.Thursday:
                    thu_trong_tuan = "Thứ 5";
                    break;
                case DayOfWeek.Friday:
                    thu_trong_tuan = "Thứ 6";
                    break;
                case DayOfWeek.Saturday:
                    thu_trong_tuan = "Thứ 7";
                    break;
                case DayOfWeek.Sunday:
                    thu_trong_tuan = "Chủ Nhật";
                    break;
            }
            dong[1] = thu_trong_tuan.ToString();
            luu_ngay.Rows.Add(dong);

        }
        DataList1.DataSource = luu_ngay;
        DataList1.DataKeyField = "Ngay";
        DataList1.DataBind();
        DataList1.SelectedIndex = 3;//them doan nay lamf co mau ngay hien hanh

    }
    private void lam_mo_ngay()
    {
        string ngay_hienhanh = "";
        if (Session["ngaychon"].ToString() == "")
        {
            ngay_hienhanh = DateTime.Today.ToString("dd/MM/yyyy");
        }
        else
        {
            ngay_hienhanh = DateTime.Parse(Session["ngaychon"].ToString()).ToString("dd/MM/yyyy");
        }
        
        for (int i = 0; i < DataList1.Items.Count; i++)
        {
            LinkButton mo_ngay = new LinkButton();
            mo_ngay = (LinkButton)DataList1.Items[DataList1.SelectedIndex].FindControl("LinkButton4");
            LinkButton mo_thu = new LinkButton();
            mo_thu = (LinkButton)DataList1.Items[DataList1.SelectedIndex].FindControl("LinkButton5");
            //string ngay_mo = ;
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label16.Text = "";
            Session["lenh_timchuyenbay"] = "";
            xuat_thu();
           xuat_chuyenbay();
           // int ngay_batdau=;
           lam_mo_ngay();

        }
    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        xuat_chuyenbay();
        // string ma_chuyenbay = DataList2.DataKeys[DataList2.SelectedIndex].ToString();//dong nay chi den dong muon xem
        Label chitiet = new Label();//khai bao label 
        chitiet = (Label)DataList2.Items[DataList2.SelectedIndex].FindControl("Label14");
       
        LinkButton chon1 = new LinkButton();   
        chon1 = (LinkButton)DataList2.Items[DataList2.SelectedIndex].FindControl("LinkButton2");
        LinkButton chon2 = new LinkButton();
        chon2 = (LinkButton)DataList2.Items[DataList2.SelectedIndex].FindControl("LinkButton3");
            chon1.Visible = false;
            chon2.Visible = true;
            chitiet.Visible = true;
            Label15.Text = DataList2.SelectedIndex.ToString();   
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {      
        if (e.CommandName == "bo_chon")
        {
            int dong = int.Parse(Label15.Text);
            Label chitiet = new Label();//khai bao label 
            chitiet = (Label)DataList2.Items[dong].FindControl("Label14");
            LinkButton chon1 = new LinkButton();
            chon1 = (LinkButton)DataList2.Items[dong].FindControl("LinkButton2");
            LinkButton chon2 = new LinkButton();
            chon2 = (LinkButton)DataList2.Items[dong].FindControl("LinkButton3");
            chon1.Visible = true;
            chon2.Visible = false;
            chitiet.Visible = false;
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string ngay = DataList1.SelectedValue.ToString();
        //int do_dai=Session["lenh_timchuyenbay"].ToString().Length;
        //string chuoi = Session["lenh_timchuyenbay"].ToString();
        //String lenhxuat="";
        // if (Request.QueryString["chuoi_trave"] == null)

        //     lenhxuat = Session["lenh_timchuyenbay"].ToString().Substring(0, do_dai - 76) + " and CONVERT(varchar(10),NGAYGIOBAY,103)='" + ngay + "'";
        //else

        //     lenhxuat = Session["lenh_timchuyenbay"].ToString().Substring(0,do_dai-53) + " and CONVERT(varchar(10),NGAYGIOBAY,103)='" + ngay + "'";
        String lenhxuat = "select DMCHUYENBAY.MACHUYENBAY,DM_HANGHANGKHONG.LOGO,DMCHUYENBAY.TENCHUYENBAY,DMCHUYENBAY.NGAYGIOBAY,DMCHUYENBAY.GIAVE,DMCHUYENBAY.CHITIET from DMCHUYENBAY,DM_HANGHANGKHONG where DMCHUYENBAY.MAHANGHANGKHONG=DM_HANGHANGKHONG.MAHANGHANGKHONG " + " and CONVERT(varchar(10),NGAYGIOBAY,103)='" + ngay + "'";
        thuvien tv = new thuvien("", lenhxuat);
        tv.xuat_thong_tin();
        if (tv.Dt.DefaultView.Count > 0)
        {
            DataList2.DataSource = tv.Dt;
            DataList2.DataKeyField = "MACHUYENBAY";
            DataList2.DataBind();
            //if (Session["diemdi"].ToString() !="" &&  Session["diemden"].ToString()!="" &&  Session["ngaybay"].ToString()!="")
            //    Label16.Text += "</br> " + "Danh Sách Chuyến Bay";
            //else
                Label16.Text = "</br> " + "Danh Sách Chuyến Bay";
            
        }
        else
        {
            DataList2.DataSource = null;
            DataList2.DataBind();
            //if (Session["diemdi"].ToString() != "" && Session["diemden"].ToString() != "" && Session["ngaybay"].ToString() != "")
            //    Label16.Text += "</br> " + "Hiện tại chưa có lịch bay";
            //else
                Label16.Text = "</br> " + "Hiện tại chưa có lịch bay";
        }

    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)//su kien databound lam tren dong
    {
        if (e.Item.ItemIndex < 0)
            return;
            DateTime ngay_hienhanh= DateTime.Today;//xuat ra ngay hien hanh
            DateTime ngay =DateTime.Parse( DataBinder.Eval(e.Item.DataItem, "ngay").ToString());
            LinkButton mo_ngay = new LinkButton();
            mo_ngay=(LinkButton)e.Item.FindControl("LinkButton4");
            LinkButton mo_thu = new LinkButton();
            mo_thu = (LinkButton)e.Item.FindControl("LinkButton5");
            if (ngay < ngay_hienhanh)
            {
                mo_ngay.Enabled = false;
                mo_thu.Enabled = false;
            }
            else
            {
                mo_ngay.Enabled = true;
                mo_thu.Enabled = true;               
            }                  
    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{

    //    Response.Redirect("~/Trang_Web/dat_ve.aspx?");// ? tra ve gia tri
    //}
}