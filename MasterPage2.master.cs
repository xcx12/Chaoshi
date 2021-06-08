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

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Label1.Text = "游客你好，欢迎来到淘宝";
            Button2.Visible = false;
        }
        if (Session["UserName"] != null)
        {
            Button2.Visible = true;
            Label1.Text = Session["UserName"] + "，你好，欢迎来到淘宝";
            HyperLink1.Visible = false;
            HyperLink2.Visible = false;
            HyperLink3.Visible = true;
            HyperLink4.Visible = true;
            Button3.Visible = true;
        }
        else
        {
            HyperLink1.Visible = true;
            HyperLink2.Visible = true;
            HyperLink3.Visible = false;
            HyperLink4.Visible = false;
            Button3.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Default2.aspx?content=" + TextBox1.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Label1.Text = "游客你好，欢迎来到淘宝";
        HyperLink1.Visible = true;
        HyperLink2.Visible = true;
        HyperLink3.Visible = false;
        HyperLink4.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["UserName"]!=null)
        {
            Server.Transfer("~/User_Car.aspx");
        }
        else
        {
            Response.Write("<script>alert('您好，请先登录')</script>");
            Server.Transfer("~/files/login.aspx");
        }
    }
}
