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
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        bind();
    }
    protected void bind()
    {
        string c="" ;
        if (Request.QueryString["content"]!=null)
	    {
            c= Request.QueryString["content"].ToString();
	    }
        string strcon = ConfigurationManager.ConnectionStrings["myshopConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        SqlDataAdapter sda = new SqlDataAdapter("select * from sp where spmc like '%" + c + "%'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "sp");

        int currentPage = Convert.ToInt16(Label1.Text);
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = ds.Tables["sp"].DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 3;
        Button1.Enabled = true;
        Button2.Enabled = true;
        pds.CurrentPageIndex = currentPage - 1;
        if (currentPage == 1)
        {
            Button1.Enabled = false;
        }
        if (currentPage == pds.PageCount)
        {
            Button2.Enabled = false;
        }

        DataList1.DataSource = pds;
        DataList1.DataBind();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt16(Label1.Text) - 1);
        bind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1.SelectedIndex = DataList1.SelectedItem.ItemIndex;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt16(Label1.Text) + 1);
        bind();
    }
  
}
