using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class seller_files_AddGoods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string c = "";
        string d = "";
        if (clothes.Checked)
        {
            c = "1";
            d = "品牌女装";
        }
        if (decorations.Checked)
        {
            c = "2";
            d = "潮流饰品";
        }
        if (shoes.Checked)
        {
            c = "3";
            d = "女鞋/靴子";
        }
        if (bags.Checked)
        {
            c = "4";
            d = "女包/精品";
        }

        string fullFileName = this.FileUpload1.PostedFile.FileName;//文件路径名称
        string FileName = fullFileName.Substring(fullFileName.LastIndexOf("\\")+1);//文件名称
        string type = fullFileName.Substring(fullFileName.LastIndexOf(".")+1);//格式

        if (type == "jpg" || type == "bmp" || type == "gif")
        {
            this.FileUpload1.PostedFile.SaveAs(Server.MapPath("../goods") + "\\" + FileName);
            
            Response.Write("<script language='javascript'>alert('上传成功！');</script>");
            SqlConnection cn = DBoperate.createCon();
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into sp(spmc,lbmc,lbbh,jg,pic,sl,bz,gysbh) values (@spmc,'" + d + "','" + c + "',@jg,@pic,@sl,@bz,'"+Session["UserName"]+"')", cn);
            cmd.Parameters.Add("@spmc", SqlDbType.VarChar).Value = spmc.Text.Trim();
            cmd.Parameters.Add("@jg", SqlDbType.Money).Value = price.Text.Trim();
            cmd.Parameters.Add("@pic", SqlDbType.VarChar).Value = Convert.ToString("~/goods/" + FileName).Trim();
            cmd.Parameters.Add("@sl", SqlDbType.Int).Value = amount.Text.Trim();
            cmd.Parameters.Add("@bz", SqlDbType.VarChar).Value = bz.Text.Trim();
            cmd.ExecuteNonQuery();
            Server.Transfer("mygoods.aspx");
            cn.Close();
        }
        else
        {
            Response.Write("<script language='javascript'> alert('图片格式错误！');</script>");
        }
        
    }
}
