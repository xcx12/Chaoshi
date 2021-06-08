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
using System.Drawing.Imaging;
using System.Drawing;
public partial class CheckCode : System.Web.UI.Page
{
    private int codeLen = 5;//随机显示字符个数
    private int fineness = 85;//图片清晰度
    private int imgWidth = 70;//图片宽度
    private int imgHeight = 20;//图片高度
    private string fontFamily = "Comic Sans MS";//字体名称
    private int fontSize = 12; //字体大小
    private Random random = new Random();

    protected void Page_Load(object sender, EventArgs e)
    {
        string validateCode = CreateValidateCode();
        Session["RandomNumber"] = validateCode;
        Bitmap bitmap = new Bitmap(imgWidth, imgHeight);
        DisturbBitmap(bitmap);
        DrawValidateCode(bitmap, validateCode);
        bitmap.Save(Response.OutputStream, ImageFormat.Gif);
    }
    private string CreateValidateCode()//得到随机数
    {
        string validateCode = "";
        for (int i = 0; i < codeLen; i++)
        {
            int n;
            if (i%2==0)
            {
                n = random.Next(26);//返回一个小于最大值得随机数
                validateCode += (char)(n + 65); 
            }
            else
            {
                 n = random.Next(9);//返回一个小于最大值得随机数
                validateCode +=n.ToString(); 
            }
        }
        return validateCode;
    }
    private void DisturbBitmap(Bitmap bitmap)//获取背景图
    {
        for (int i = 0; i < bitmap.Width; i++)
        {
            for (int j = 0; j < bitmap.Height; j++)
            {
                if (random.Next(90) <= this.fineness)
                {
                    bitmap.SetPixel(i, j, Color.White);//获取指定位置的像素颜色
                }
            }
        }
    }
    private void DrawValidateCode(Bitmap bitmap, string validateCode)
    {
        Graphics g = Graphics.FromImage(bitmap);
        Font font = new Font(fontFamily, fontSize, FontStyle.Bold);
        g.DrawString(validateCode, font, Brushes.Black, random.Next(-3, 11), random.Next(-4, 1));//在指定区域绘制文本字符
    }

}
