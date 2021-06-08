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

public partial class checkout : System.Web.UI.Page
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
            this.Button1.Enabled = false;
        }
        else if (!Page.IsPostBack)
        {
            if (Session["UserCar"] == null)
            {
                this.lblMsg.Text = "您还没有购物！";
                this.Button1.Enabled = false;
            }
            else
            {
                hashCar = (Hashtable)Session["UserCar"];
                if (hashCar.Count == 0)
                {
                    this.lblMsg.Text = "您还没有购物！";
                    this.Button1.Enabled = false;
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
                        price = float.Parse(table.Rows[0]["jg"].ToString());
                        num = Int32.Parse(drRow["GoodsNum"].ToString());
                        drRow["totalPrice"] = (price * num).ToString();
                        totalPrice += price * num;
                        i++;
                    }
                    this.Label1.Text = totalPrice.ToString();
                    this.GridView1.DataSource = dtTable.DefaultView;
                    this.GridView1.DataBind();
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string strName = this.tbName.Text;
            string strAddr = this.tbAddr.Text;
            string strEmail = this.tbEmail.Text;
            string strPhone = this.tbPhone.Text;
            string strZip = this.tbZip.Text;
            string strTime = DateTime.Now.ToString();
            strSql = "Insert into z_OrderInfo (Order_time,Order_isConfirm,Order_sendStatus,Order_recUserName,Order_address,Order_zip,User_useName,Order_totalPrice,Order_phone,Order_email) values ('" + strTime + "','n','0','" + strName + "','" + strAddr + "','" + strZip + "','" + Session["UserName"].ToString() + "','" + this.Label1.Text + "','" + strPhone + "','" + strEmail + "');";
            webService.ExcuteSql(strSql);
            strSql = "Select Order_no from z_OrderInfo where Order_time='" + strTime + "' and User_useName='" + Session["UserName"].ToString() + "';";
            dtTable = webService.ExcuteSelect(strSql);
            string strOrderNo = dtTable.Rows[0]["Order_no"].ToString();
            string strGoodsID;
            string strGoodsName;
            string strGoodsNum;
            string strGoodsTotalPrice;
            foreach (GridViewRow gvr in this.GridView1.Rows)
            {
                strGoodsName = gvr.Cells[2].Text;
                strGoodsID = gvr.Cells[1].Text;
                strGoodsNum = gvr.Cells[3].Text;
                strGoodsTotalPrice = gvr.Cells[5].Text;
                strSql = "Insert into z_OrderDetail(Order_no,Goods_ID,Order_goodsNum,Order_price,User_useName,Goods_Name) values('" + strOrderNo + "','" + strGoodsID + "','" + strGoodsNum + "','" + strGoodsTotalPrice + "','" + Session["UserName"] + "','" +strGoodsName+ "');";
                webService.ExcuteSql(strSql);
            }
            Session["UserCar"] = null;
            Session["OrderNo"] = strOrderNo;
            Response.Redirect("~/ThankYou.aspx");
            Response.Redirect("~/Default.aspx");
        }
    }
}
