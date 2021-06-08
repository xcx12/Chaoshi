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

public partial class files_register_buyer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            register.Enabled = false;
            Label5.Visible = false;
            
        }
    }
    protected void agree_CheckedChanged(object sender, EventArgs e)
    {
        if (agree.Checked)
        {
            register.Enabled = true;
        }
        else
        {
            register.Enabled = false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection sellercn = new SqlConnection("Data Source=.;Initial Catalog=myshop;Integrated Security=SSPI");
        SqlCommand sellercmd = new SqlCommand("select count(*) from hy where hyzh=@username", sellercn);
        sellercn.Open();
        sellercmd.Parameters.Add("@username", SqlDbType.Char).Value = hyzh.Text;
        int count = Convert.ToInt32(sellercmd.ExecuteScalar());
        if (count > 0)
        {
            Label5.Visible = true;
            Label5.Text = "该会员账号已经存在，请重新输入";
        }
        else
        {
            Label5.Visible = true;
            Label5.Text = "该会员账号可以使用";
        }
    }
    protected void register_Click(object sender, EventArgs e)
    {

       
        SqlConnection con = DBoperate.createCon();
        try
        {
            SqlCommand cmd = new SqlCommand("insert into gys values(@gyszh,@gysmc,@dz,@yzbm,@dhhm,@yhzh,@khyh,@gyspsd,@email)", con);
            cmd.Parameters.Add("@gyszh", SqlDbType.Char).Value = hyzh.Text.Trim();
            cmd.Parameters.Add("@gysmc", SqlDbType.Char).Value = hyxm.Text.Trim();
            cmd.Parameters.Add("@dz", SqlDbType.VarChar).Value = address.Text.Trim();
            cmd.Parameters.Add("@yzbm", SqlDbType.Char).Value = yb.Text.Trim();
            cmd.Parameters.Add("@dhhm", SqlDbType.VarChar).Value = phone.Text.Trim();
            cmd.Parameters.Add("@yhzh", SqlDbType.VarChar).Value = cardid.Text.Trim();
            cmd.Parameters.Add("@khyh", SqlDbType.VarChar).Value = DropDownList1.SelectedValue;
            cmd.Parameters.Add("@gyspsd", SqlDbType.Char).Value = pwd.Text.Trim();
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email.Text.Trim();

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('注册成功')</script>");
            Response.Redirect("~/files/login.aspx");
        }
        catch
        {
            Response.Write("wrong");
        }
        finally
        {
            con.Close();
        }
    }
}
