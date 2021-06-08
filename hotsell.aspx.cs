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

public partial class hotsell : System.Web.UI.Page
{
    Hashtable hashCar;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind();
        }
    }

    protected void bind()
    {
        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=myshop;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select spmc,pic,jg,discount,spbh from sp", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds, "sp");

        int currentPage = Convert.ToInt16(Label1.Text);
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = ds.Tables["sp"].DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 9;
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
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1.SelectedIndex = DataList1.SelectedItem.ItemIndex;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt16(Label1.Text) - 1);
        bind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = Convert.ToString(Convert.ToInt16(Label1.Text) + 1);
        bind();
    }
    protected void lbtnBuy_Command(object sender, CommandEventArgs e)
    {
        if (Session["UserCar"] == null)
        {
            hashCar = new Hashtable();
            hashCar.Add(e.CommandArgument, 1);
            Session["UserCar"] = hashCar;
        }
        else
        {
            hashCar = (Hashtable)Session["UserCar"];
            if (hashCar.Contains(e.CommandArgument))
            {
                int num = Int32.Parse(hashCar[e.CommandArgument].ToString());
                hashCar[e.CommandArgument] = (num + 1).ToString();
            }
            else
                hashCar.Add(e.CommandArgument, 1);
        }
        Response.Redirect("User_Car.aspx");
    }
}
