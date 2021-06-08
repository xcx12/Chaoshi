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

public partial class clothes_clothes : System.Web.UI.Page
{
    Hashtable hashCar;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            bind();
            bind1();
            bind2();
            bind3();
            bind4();
        }
    }
    protected void bind()
    {
        SqlConnection cn = DBoperate.createCon();
        SqlCommand cmd = new SqlCommand("select spmc,jg,discount,pic from sp where bz='crazy'", cn);
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
        SqlCommand cmd1 = new SqlCommand("select spmc,jg,pic,spbh from sp where bz='yc'", cn1);
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
    protected void bind2()
    {
        SqlConnection cn2 = DBoperate.createCon();
        SqlCommand cmd2 = new SqlCommand("select spmc,jg,pic,spbh from sp where bz='jp'", cn2);
        cn2.Open();
        SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
        DataSet ds2 = new DataSet();
        sda2.Fill(ds2, "sp");

        DataList3.DataSource = ds2;
        DataList3.DataBind();
    }
    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList3.SelectedIndex = DataList3.SelectedItem.ItemIndex;
    }
    protected void bind3()
    {
        SqlConnection cn3 = DBoperate.createCon();
        SqlCommand cmd3 = new SqlCommand("select spmc,jg,pic,spbh from sp where bz='rh'", cn3);
        cn3.Open();
        SqlDataAdapter sda3 = new SqlDataAdapter(cmd3);
        DataSet ds3 = new DataSet();
        sda3.Fill(ds3, "sp");

        DataList4.DataSource = ds3;
        DataList4.DataBind();
    }
    protected void DataList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList4.SelectedIndex = DataList4.SelectedItem.ItemIndex;
    }
    protected void bind4()
    {
        SqlConnection cn4 = DBoperate.createCon();
        SqlCommand cmd4 = new SqlCommand("select spmc,jg,pic,spbh from sp where bz='mc'", cn4);
        cn4.Open();
        SqlDataAdapter sda4 = new SqlDataAdapter(cmd4);
        DataSet ds4 = new DataSet();
        sda4.Fill(ds4, "sp");

        DataList5.DataSource = ds4;
        DataList5.DataBind();
    }

    protected void DataList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList5.SelectedIndex = DataList5.SelectedItem.ItemIndex;
    }
    protected void ImageButton3_Command(object sender, CommandEventArgs e)
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
