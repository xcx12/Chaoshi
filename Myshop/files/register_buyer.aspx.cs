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
        SqlConnection buyercn = new SqlConnection("Data Source=.;Initial Catalog=myshop;Integrated Security=SSPI");
        SqlCommand buyercmd = new SqlCommand("select count(*) from hy where hyzh=@username",buyercn);
        buyercn.Open();
        buyercmd.Parameters.Add("@username",SqlDbType.Char).Value=hyzh.Text;
        int count = Convert.ToInt32(buyercmd.ExecuteScalar());
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

        string s;
        if (RadioButton1.Checked)
        {
            s = "男";
        }
        else
        {
            s = "女";
        }
        SqlConnection con = DBoperate.createCon();
        try
        {
            SqlCommand cmd = new SqlCommand("insert into hy values(@hyzh,@hyxm,@psd,@zjh,@yb,@dz,@pho,'" + s + "',@email)", con);
            cmd.Parameters.Add("@hyzh", SqlDbType.Char).Value = hyzh.Text;
            cmd.Parameters.Add("@hyxm", SqlDbType.Char).Value = hyxm.Text;
            cmd.Parameters.Add("@psd", SqlDbType.Char).Value = pwd.Text;
            cmd.Parameters.Add("@zjh", SqlDbType.VarChar).Value = cardid.Text;
            cmd.Parameters.Add("@yb", SqlDbType.Char).Value = yb.Text;
            cmd.Parameters.Add("@dz", SqlDbType.Char).Value = address.Text;
            cmd.Parameters.Add("@pho", SqlDbType.VarChar).Value = phone.Text;
            cmd.Parameters.Add("email", SqlDbType.VarChar).Value = email.Text;


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
