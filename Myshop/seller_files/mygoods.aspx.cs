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
using System.Data.SqlClient;

public partial class seller_files_mygoods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection cn = DBoperate.createCon();
            SqlCommand cmd = new SqlCommand("select count(*) from hy where hyzh='" + Session["UserName"] + "'", cn);
            cn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count> 0)
            {
                Response.Redirect("Error.aspx");
            }
            cn.Close(); 
        }
    }
    
}
