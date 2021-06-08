<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="files_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>淘！我喜欢</title>
    <style type="text/css">
    body{margin:0;padding:0}
    .top{width:100%;height:30px;background:url(../images/hd.png) repeat-x top;line-height:30px}
    .footer{width:940px;height:26px;background:url(../images/hd.png) repeat-x bottom}
    .lmain{width:940px;height:100%;margin:0 auto}
    #llogo{width:940px;height:43px;}
    #lmiddle{width:940px;height:500px}
    #lml{width:350px;height:300px;margin-top:10px;float:left;margin-left:55px}
    #lmr{float:left;width:350px;height:300px;margin-top:10px}
    #lmb{clear:both;width:940px;height:190px;margin-top:10px}
    #llbg{height:63px;background:url(../images/login-bg.png) no-repeat left top}
     .username{background:url(../images/username.gif) no-repeat;border:dashed 1px #990000;border-top:0;border-left:0;border-right:0;padding-left:16px}
    .pwd{background:url(../images/password.gif) no-repeat;border:dashed 1px #990000;border-top:0;border-left:0;border-right:0;padding-left:16px}
    .login1{background:url(../images/login1.gif) no-repeat;width:108px;height:31px}
    #llre{background:url(../images/login-bg.png) no-repeat 100px -55px}
    .regist1{background:url(../images/regist.gif) no-repeat;width:90px;height:30px}
    .link{text-decoration:none;color:black}
    #lmb{color: #0099ff}
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div class="top" style="text-align: left">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx">你好！欢迎来到淘宝！</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" BorderStyle="None" NavigateUrl="~/files/login.aspx" CssClass="link">请登录</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" BorderStyle="None" NavigateUrl="~/files/register.aspx" CssClass="link">免费注册</asp:HyperLink></div>
    <div class="lmain">
         <div id="llogo" style="text-align: center">
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.bmp" /></div>
         <div id="lmiddle">
             <div id="lml" style="text-align: right">
                 <table style="width:320px;">
                     <tr>
                         <td colspan="2" id="llbg"></td>
                     </tr>
                     <tr>
                         <td style="height: 27px">
                             用户名：</td>
                         <td style="text-align: left; height: 27px;">
                             <asp:TextBox ID="TextBox1" runat="server"  CssClass="username"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td style="height: 27px">
                             密码：</td>
                         <td style="text-align: left; height: 27px;">
                             <asp:TextBox ID="TextBox2" runat="server" CssClass="pwd" TextMode="Password" Width="150px"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td style="height: 27px; text-align: center;" colspan="2">
                             <asp:CheckBox ID="CheckBox1" runat="server" Text="下次记住我" />
                             <span style="font-size: 10pt">有效时间：<asp:DropDownList ID="DropDownList1" runat="server">
                                 <asp:ListItem Value="1">一个月</asp:ListItem>
                                 <asp:ListItem Value="2">两个月</asp:ListItem>
                                 <asp:ListItem Value="6">半年</asp:ListItem>
                                 <asp:ListItem Value="12">一年</asp:ListItem>
                                 <asp:ListItem Value="120">永久</asp:ListItem>
                             </asp:DropDownList></span></td>
                     </tr>
                     <tr>
                         <td style="height: 27px; text-align: center" colspan="2">
                             <asp:RadioButton ID="buyer" runat="server" GroupName="a" Text="我是买家" Checked="True" />
                             <asp:RadioButton ID="seller" runat="server" GroupName="a" Text="我是卖家" /></td>
                     </tr>
                     <tr>
                         <td style="text-align: center;" colspan="2">
                             <asp:Button ID="login" runat="server" Text="登录" BorderStyle="None" CssClass="login1" Width="107px" OnClick="login_Click"  /></td>
                     </tr>
                 </table>
             </div>
             <div id="lmr">
                   <table style="width:320px;">
                     <tr>
                         <td colspan="2" id="llre" style="height: 63px"></td>
                     </tr>
                     <tr>
                         <td style="width:30%; text-align: center;">
                             <asp:Image ID="Image2" runat="server" ImageUrl="~/images/icon_features_01.gif" /></td>
                         <td>
                             便宜有好货！<span style="font-size: 9pt">商品任意选</span></td>
                     </tr>
                     <tr>
                         <td style="text-align: center" >
                             <asp:Image ID="Image3" runat="server" ImageUrl="~/images/icon_features_02.gif" /></td>
                         <td>
                             买卖更安心！<span style="font-size: 9pt">支付更安全</span></td>
                     </tr>
                     <tr>
                         <td style="text-align: center" >
                             <asp:Image ID="Image4" runat="server" ImageUrl="~/images/icon_features_03.gif" /></td>
                         <td>
                             免费开网店！<span style="font-size: 9pt">赚钱交淘友</span></td>
                     </tr>
                     <tr>
                         <td style="text-align: center">
                             <asp:Image ID="Image5" runat="server" ImageUrl="~/images/icon_features_04.gif" /></td>
                         <td>
                             超人气社区！<span style="font-size: 9pt">精彩每一天</span></td>
                     </tr>
                     <tr>
                         <td colspan="2" style="text-align: center">
                             <asp:Button ID="register" runat="server" BorderStyle="None" Text="现在就注册" CssClass="regist1" Width="92px" OnClick="register_Click" /></td>
                     </tr>
                 </table>  
             </div>
             <div id="lmb">
                     <h4 style="text-align: center">友情提示</h4>
                           <ul>
                                <li style="text-align: center">为了您的密码安全，请仔细阅读
                                     <asp:HyperLink ID="HyperLink1" runat="server">安全密码贴士</asp:HyperLink></li>
                                <li style="text-align: center">为防止病毒或者木马窃取您的账户信息，请即时杀毒</li>
                                <li style="text-align: center">为了您的密码安全，请勿在公共场合保存您的密码</li>
                           </ul>
             </div>
         </div>
         <div class="footer" style="text-align: center">CopyRight&copy;版权所有，翻版必究，08数1第三小组</div>  
    </div>
    </form>
    </center>
</body>
</html>
