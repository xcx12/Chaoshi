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

public partial class shoppingCart : System.Web.UI.Page
{
    string strSql;
    WebService webService = new WebService();
    DataTable dtTable;
    Hashtable hashCar;
      protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            this.lblMsg.Text = "您还没有登陆，请先登陆！";
            this.btnBuy.Enabled = false;
            this.btnEmpty.Enabled = false;
            this.btnUpdate.Enabled = false;
            this.btnEnd.Enabled = false;
        }
        else if (!Page.IsPostBack)
        {
            if (Session["UserCar"] == null)
            {
                this.lblMsg.Text = "您还没有购物！";
                this.btnBuy.Enabled = false;
                this.btnEmpty.Enabled = false;
                this.btnUpdate.Enabled = false;
                this.btnEnd.Enabled = false;
            }
            else
            {
                hashCar = (Hashtable)Session["UserCar"];
                if (hashCar.Count == 0)
                {
                    this.lblMsg.Text = "您还没有购物！";
                    this.btnBuy.Enabled = false;
                    this.btnEmpty.Enabled = false;
                    this.btnUpdate.Enabled = false;
                    this.btnEnd.Enabled = false;
                }
                else
                {
                    dtTable = new DataTable();
                    DataColumn column1 = new DataColumn("no");
                    DataColumn column2 = new DataColumn("GoodsID");
                    DataColumn column3 = new DataColumn("GoodsName");
                    DataColumn column4 = new DataColumn("GoodsNum");
                    DataColumn column5 = new DataColumn("price");
                    DataColumn column6 = new DataColumn("totalPrice");
                    dtTable.Columns.Add(column1);
                    dtTable.Columns.Add(column2);
                    dtTable.Columns.Add(column3);
                    dtTable.Columns.Add(column4);
                    dtTable.Columns.Add(column5);
                    dtTable.Columns.Add(column6);
                    DataRow row;
                    foreach (object key in hashCar.Keys)
                    {
                        row = dtTable.NewRow();
                        row["GoodsID"] = key.ToString();
                        row["GoodsNum"] = hashCar[key].ToString();
                        dtTable.Rows.Add(row);
                    }

                    DataTable table;
                    int i = 1;
                    float price;
                    int num;
                    float totalPrice = 0;
                    foreach (DataRow drRow in dtTable.Rows)
                    {
                        strSql = "Select spmc,discount,jg from sp where spbh='" + drRow["GoodsID"].ToString() + "';";
                        table = webService.ExcuteSelect(strSql);
                        drRow["no"] = i;
                        drRow["GoodsName"] = table.Rows[0]["spmc"].ToString();
                        drRow["price"] = table.Rows[0]["jg"].ToString();
                        price =float.Parse(table.Rows[0]["jg"].ToString());
                        num = Int32.Parse(drRow["GoodsNum"].ToString());
                        drRow["totalPrice"] = (price * num).ToString();
                        totalPrice += price * num;
                        i++;
                    }
                    this.Label1.Text ="总价：  "+ totalPrice.ToString();
                    this.GridView1.DataSource = dtTable.DefaultView;
                    this.GridView1.DataBind();
                }
            }
        }
    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        hashCar = (Hashtable)Session["UserCar"];
        hashCar.Remove(e.CommandArgument);
        Session["UserCar"] = hashCar;
        Response.Redirect("User_Car.aspx");
    }


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        hashCar = (Hashtable)Session["UserCar"];
        foreach (GridViewRow gvr in this.GridView1.Rows)
        {
            int index = gvr.RowIndex;
            TextBox tb = (TextBox)gvr.FindControl("TextBox1");
            int num = Int32.Parse(tb.Text);
            string goodsID = gvr.Cells[1].Text;
            hashCar[goodsID] = num;
        }
        Session["UserCar"] = hashCar;
        Response.Redirect("User_Car.aspx");
    }
    protected void btnEmpty_Click(object sender, EventArgs e)
    {
        Session["UserCar"] = null;
        Response.Redirect("User_Car.aspx");
    }
    protected void btnBuy_Click(object sender, EventArgs e)
    {
        Response.Redirect("hotsell.aspx");
    }
    protected void btnEnd_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
}
