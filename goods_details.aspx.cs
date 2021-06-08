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

public partial class goods_details : System.Web.UI.Page
{
    Hashtable hashCar;
    protected void Page_Load(object sender, EventArgs e)
    {
            bind();       
    }
    protected void bind()
    {

        string c = "";
        if (Request.QueryString["a"] != null)
        {
            c = Request.QueryString["a"].ToString();

        }
        SqlConnection cn = DBoperate.createCon();
        SqlCommand cmd = new SqlCommand("select spmc,sl,jg,discount,pic,spbh from sp where spmc='" + c + "'", cn);
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
