using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for thuvien
/// </summary>
public class thuvien
{

    // khai bao bien thanh vien
    private string chuoi_ket_noi;

    public string Chuoi_ket_noi
    {
        get { return chuoi_ket_noi; }//lay gia tri cua bien tu ben trong di ra ngoai
        set { chuoi_ket_noi = value; }//gan gia tri tu ben ngoai vao trong bien//lap trinh huong doi tuong bat buoc phai dung lenh nay
    }
    private SqlConnection ketnoi;

    public SqlConnection Ketnoi
    {
        get { return ketnoi; }
        set { ketnoi = value; }
    }
    private string lenh_select;

    public string Lenh_select
    {
        get { return lenh_select; }
        set { lenh_select = value; }
    }
    private string ten_table;

    public string Ten_table
    {
        get { return ten_table; }
        set { ten_table = value; }
    }
    private SqlDataAdapter bo_doc_ghi;

    public SqlDataAdapter Bo_doc_ghi
    {
        get { return bo_doc_ghi; }
        set { bo_doc_ghi = value; }
    }
    private DataTable dt;

    public DataTable Dt
    {
        get { return dt; }
        set { dt = value; }
    }

    public virtual int so_dong()
    {
        return dt.DefaultView.Count;
    }   
    //ham khoi tao
    public thuvien(string p_ten_bang, string p_lenh_select)
    {
        chuoi_ket_noi = "Data Source=.\\SQL2008R2;database=CTNAVI;integrated security=true";//integrated security=true kieu cach thuc ket noi
        ketnoi = new SqlConnection(chuoi_ket_noi);
        ten_table = p_ten_bang;
        if (ten_table != "")        
            lenh_select = "SELECT * FROM  " + ten_table;
        else
            lenh_select = p_lenh_select;
        bo_doc_ghi = new SqlDataAdapter(lenh_select, ketnoi);
        dt=new DataTable();
        SqlCommandBuilder bo_phat_sinh = new SqlCommandBuilder(bo_doc_ghi);//cau lenh nay dung cho lenh cap nhat  (cap_nhat())
    }   
    //phuuong thuc khac
    public void xuat_thong_tin()
    {
        bo_doc_ghi.FillSchema(dt, SchemaType.Mapped);
        bo_doc_ghi.Fill(dt);
    }
   public int cap_nhat(string p_lenh_cap_nhat, ref string tb_loi)
   {
       int kq = -1;
       SqlCommand bo_lenh= new SqlCommand();
       bo_lenh.CommandText = p_lenh_cap_nhat;
       bo_lenh.CommandType=CommandType.Text;
       bo_lenh.Connection = ketnoi;
       try
       {
           ketnoi.Open();
           kq = bo_lenh.ExecuteNonQuery();
       }
       catch (Exception loi)
       {
           tb_loi = loi.Message;           
       }
       finally
       {
           if (ketnoi.State==ConnectionState.Open)
           {
               ketnoi.Close();
           }
       }
       return kq;
   }
   public StringBuilder thongbao(string tb)//ra bang thong bao " ban co muon sua,xoa,them ko?"
   {
       StringBuilder manhinh = new StringBuilder();
       manhinh.Append("<script language='javascript'>");
       manhinh.Append(" alert(\"" + tb + "\");");
       manhinh.Append("<" + "/script>");
       return manhinh;
   }

   public string cap_nhat()
   {
       string kq = "";
       try
       {
           bo_doc_ghi.Update(dt);
           dt.AcceptChanges();
       }
       catch (Exception loi)
       {
           kq = loi.Message;
       }
       return kq;
   }
}