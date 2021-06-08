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

public partial class files_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            if (Response.Cookies["username"] != null)
            {
                TextBox1.Text = Convert.ToString(Request.Cookies["username"].Value);
                if (Request.Cookies["LoginPwd"] != null)
                {
                    TextBox2.Text = Request.Cookies["LoginPwd"].Value.ToString();
                }
            }
        }



    }
    protected void login_Click(object sender, EventArgs e)
    {
        HttpCookie cookie = new HttpCookie("username");
        cookie.Value = this.TextBox1.Text;
        cookie.Expires = DateTime.Now.AddYears(1);
        Response.Cookies.Add(cookie);

        SqlConnection login = new SqlConnection("Data Source=.;Initial Catalog=myshop;Integrated Security=SSPI");
        if (buyer.Checked)
        {
            SqlCommand logincmd1 = new SqlCommand("select count(*) from hy where hyzh=@username and psd=@psd", login);
            login.Open();
            logincmd1.Parameters.Add("@username", SqlDbType.Char).Value = TextBox1.Text;
            logincmd1.Parameters.Add("@psd", SqlDbType.Char).Value = TextBox2.Text;
            int count = Convert.ToInt32(logincmd1.ExecuteScalar());
            if (count > 0)
            {
                if (CheckBox1.Checked)
                {
                    
                    Response.Cookies["LoginPwd"].Value = TextBox2.Text;
                    Response.Cookies["LoginPwd"].Expires = DateTime.Now.AddMonths(Convert.ToInt16(DropDownList1.SelectedValue));
                }
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("../Default.aspx");
            }
            else
            {
                Response.Write("用户名或密码错误，请重新输入");
            }
            login.Close();
        }
        else
        {
            SqlCommand logincmd2 = new SqlCommand("select count(*) from gys where gyszh=@sellername and gyspsd=@sellerpsd", login);
            login.Open();
            logincmd2.Parameters.Add("@sellername", SqlDbType.Char).Value = TextBox1.Text;
            logincmd2.Parameters.Add("@sellerpsd", SqlDbType.Char).Value = TextBox2.Text;
            int count = Convert.ToInt32(logincmd2.ExecuteScalar());
            if (count > 0)
            {
                if (CheckBox1.Checked)
                {

                    Response.Cookies["LoginPwd"].Value = TextBox2.Text;
                    Response.Cookies["LoginPwd"].Expires = DateTime.Now.AddMonths(Convert.ToInt16(DropDownList1.SelectedValue));
                }
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("../Default.aspx");
            }
            else
            {
                Response.Write("用户名或密码错误，请重新输入");
            }
            login.Close();
        }
        
    }
    protected void register_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}
