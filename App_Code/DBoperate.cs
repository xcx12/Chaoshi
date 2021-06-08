using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
/// <summary>
/// Class1 的摘要说明
/// </summary>
public class DBoperate
{
	public DBoperate()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static SqlConnection createCon()
    { 
        return  new SqlConnection(ConfigurationManager.ConnectionStrings["myshopConnectionString"].ConnectionString);
     
    }
}
