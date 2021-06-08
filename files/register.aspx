<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="files_register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>欢迎注册淘宝</title>
    <style type="text/css">
    body{margin:0;padding:0}
    .top{width:100%;height:25px;background:url(../images/hd.png) repeat-x top;line-height:25px}
    .footer{width:940px;height:25px;border-top:solid 1px #0080FF;margin-top:80px;background:url(../images/hd.png) repeat-x top;}
    .rmain{margin:0 auto;width:880px;height:520px}
    #rlogo{width:940px;height:43px;margin-top:20px}
    #rbody{width:940px;height:307px;margin-top:20px}
    #rbuyer{width:448px;height:307px;border:solid 1px orange;float:right;background:url(../images/register_first_bg.png) no-repeat -459px 0;float:right}
    #rseller{width:448px;height:307px;border:solid 1px orange;background:url(../images/register_first_bg.png) no-repeat -459px 0;float:left}
    #rbhead{width:200px;height:40px;font-weight:bold;font-size:24pt;margin-top:55px;margin-left:200px}
    #rshead{width:200px;height:40px;font-weight:bold;font-size:24pt;margin-top:55px;margin-left:200px}
    .rnr{width:250px;height:120px;margin-left:180px;margin-top:20px}
    #rnr1{width:230px;height:32px;margin:0 auto;background:url(../images/icon_features_03.gif) no-repeat;padding-left:32px;line-height:32px;color:#999999;font-weight:bold}
    #rnr2{width:230px;height:32px;margin:0 auto;background:url(../images/icon_features_02.gif) no-repeat;padding-left:32px;line-height:32px;color:#999999;font-weight:bold}
    #rnr3{width:230px;height:32px;margin:0 auto;background:url(../images/icon_features_01.gif) no-repeat;padding-left:32px;line-height:32px;color:#999999;font-weight:bold}
    #rnr4{width:230px;height:32px;margin:0 auto;background:url(../images/icon_features_02.gif) no-repeat;padding-left:32px;line-height:32px;color:#999999;font-weight:bold}
    .rbtn{width:79px;height:30px;margin-top:10px;margin-left:60px}
    .btn{background:url(../images/btn1.gif) no-repeat;width:79px;height:32px}
    .link{text-decoration:none;color:black}
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div class="top" style="text-align: left">
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Default.aspx">你好！欢迎来到淘宝！</asp:HyperLink>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/files/login.aspx" CssClass="link">[请登录]</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/files/register.aspx" CssClass="link">[免费注册]</asp:HyperLink></div>
    <div class="rmain">
        <div id="rlogo">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.bmp" /></div>
        <div id="rbody">
            <div id="rbuyer">
                <div id="rbhead">
                    <span>卖家注册</span></div>
                <div class="rnr" style="font-size: 12pt">
                     <div id="rnr1">
                         免费开网店</div>
                     <div id="rnr2">
                         买卖更放心</div> 
                         <div class="rbtn">
                             <asp:Button ID="srgs" runat="server" BorderStyle="None" Text="马上注册" CssClass="btn" OnClick="srgs_Click" /></div>
                </div>
            </div>
            <div id="rseller" style="font-size: 12pt">
                <div id="rshead">
                    <span>买家注册</span></div>
                <div class="rnr">
                     <div id="rnr3">
                         购买更方便</div>
                     <div id="rnr4">
                         支付更安全</div>
                    <div class="rbtn">
                        <asp:Button ID="brgs" runat="server" BorderStyle="None" Text="马上注册" CssClass="btn" OnClick="brgs_Click" /></div>
                </div>
            </div>
            
        </div>
     
     </div>
     <div class="footer" style="text-align: center">CopyRight&copy;版权所有，翻版必究，08数1第三小组</div>
    </form>
    </center>
</body>
</html>
