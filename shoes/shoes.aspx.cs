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

public partial class shoes_shoes : System.Web.UI.Page
{
    Hashtable hashCar;
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
        SqlConnection cn = DBoperate.createCon();
        SqlCommand cmd = new SqlCommand("select spmc,pic,jg,discount,spbh from sp where bz='cx'",cn);
        cn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds,"sp");
        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1.SelectedIndex = DataList1.SelectedItem.ItemIndex;
    }
    protected void bind1()
    {
        SqlConnection cn1 = DBoperate.createCon();
        SqlCommand cmd1 = new SqlCommand("select spmc,pic,jg,discount,spbh from sp where bz='tj'", cn1);
        cn1.Open();
        SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1, "sp");
        DataList2.DataSource = ds1;
        DataList2.DataBind();

    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList2.SelectedIndex = DataList2.SelectedItem.ItemIndex;
    }
    protected void ImageButton2_Command(object sender, CommandEventArgs e)
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
        Response.Redirect("../User_Car.aspx");
    }
    
}
