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

public partial class shipin_decorations : System.Web.UI.Page
{
    Hashtable hashCar;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind();
            bind5();
            bind6();
            bind7();
            bind8();
        }
    }
    protected void bind()
    {
        SqlConnection cn = DBoperate.createCon();
        SqlCommand cmd = new SqlCommand("select pic,spmc,jg,discount from sp where bz='hot'",cn);
        cn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds, "sp");

        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1.SelectedIndex = DataList1.SelectedItem.ItemIndex;
    }
    protected void bind6()
    {
        SqlConnection cn6 = DBoperate.createCon();
        SqlCommand cmd6 = new SqlCommand("select spmc,jg,pic,spbh from sp where bz='couple '", cn6);
        cn6.Open();
        SqlDataAdapter sda6 = new SqlDataAdapter(cmd6);
        DataSet ds6 = new DataSet();
        sda6.Fill(ds6, "sp");

        DataList7.DataSource = ds6;
        DataList7.DataBind();
    }
    protected void DataList7_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList7.SelectedIndex = DataList7.SelectedItem.ItemIndex;
    }
    protected void bind7()
    {
        SqlConnection cn7 = DBoperate.createCon();
        SqlCommand cmd7 = new SqlCommand("select spmc,jg,pic,spbh from sp where bz='necklace '", cn7);
        cn7.Open();
        SqlDataAdapter sda7 = new SqlDataAdapter(cmd7);
        DataSet ds7= new DataSet();
        sda7.Fill(ds7, "sp");

        DataList8.DataSource = ds7;
        DataList8.DataBind();
    }
    protected void DataList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList8.SelectedIndex = DataList8.SelectedItem.ItemIndex;
    }
    protected void bind8()
    {
        SqlConnection cn8= DBoperate.createCon();
        SqlCommand cmd8 = new SqlCommand("select spmc,jg,pic,spbh from sp where bz='rm'", cn8);
        cn8.Open();
        SqlDataAdapter sda8 = new SqlDataAdapter(cmd8);
        DataSet ds8 = new DataSet();
        sda8.Fill(ds8, "sp");

        DataList9.DataSource = ds8;
        DataList9.DataBind();
    }
    protected void DataList9_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList9.SelectedIndex = DataList9.SelectedItem.ItemIndex;
    }
    protected void bind5()
    {
        SqlConnection cn5 = DBoperate.createCon();
        SqlCommand cmd5 = new SqlCommand("select spmc,jg,pic,spbh from sp where bz='rm'", cn5);
        cn5.Open();
        SqlDataAdapter sda5 = new SqlDataAdapter(cmd5);
        DataSet ds5 = new DataSet();
        sda5.Fill(ds5, "sp");

        DataList2.DataSource = ds5;
        DataList2.DataBind();
    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
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
