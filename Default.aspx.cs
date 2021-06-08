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



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind();
            bind1();
        }
    }
    protected void bind()
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=myshop;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select spmc,pic,jg from sp where bz='hotsell'",con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds,"sp");

        int currentPage = Convert.ToInt16(Label1.Text);
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = ds.Tables["sp"].DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 3;
        Button1.Enabled = true;
        Button2.Enabled = true;
        pds.CurrentPageIndex = currentPage-1;
        if (currentPage == 1)
        {
            Button1.Enabled = false;
        }
        if (currentPage == pds.PageCount)
        {
            Button2.Enabled = false;
        }
         


        DataList2.DataSource = pds;
        DataList2.DataBind();

        
    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList2.SelectedIndex = DataList2.SelectedItem.ItemIndex;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt16(Label1.Text)-1);
        bind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt16(Label1.Text) + 1);
        bind();
    }

    protected void bind1()
    {
        SqlConnection con1 = new SqlConnection("Data Source=.;Initial Catalog=myshop;Integrated Security=True" );
        SqlCommand cmd1 = new SqlCommand("select * from sp where lbbh='2'", con1);
        SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1, "sp");

        int currentPage = Convert.ToInt16(Label2.Text);
        PagedDataSource pds1 = new PagedDataSource();
        pds1.DataSource = ds1.Tables["sp"].DefaultView;
        pds1.AllowPaging = true;
        pds1.PageSize = 3;
        Button3.Enabled = true;
        Button4.Enabled = true;
        pds1.CurrentPageIndex = currentPage - 1;
        if (currentPage == 1)
        {
            Button3.Enabled = false;
        }
        if (currentPage == pds1.PageCount)
        {
            Button4.Enabled = false;
        }

        DataList3.DataSource = pds1;
        DataList3.DataBind();

    }
    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList3.SelectedIndex = DataList3.SelectedItem.ItemIndex;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label2.Text = Convert.ToString(Convert.ToInt16(Label2.Text) - 1);
        bind1();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label2.Text = Convert.ToString(Convert.ToInt16(Label2.Text) + 1);
        bind1();
    }

}
