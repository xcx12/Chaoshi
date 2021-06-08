<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="ThankYou" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>淘！我喜欢</title>
    <meta http-equiv="refresh" content="2 url=../Default.aspx" />
    <style type="text/css">
    body{margin:0;padding:0}
    .top{width:100%;height:30px;background:url(images/hd.png) repeat-x top;line-height:30px}
    .footer{width:940px;height:26px;background:url(images/hd.png) repeat-x bottom}
    .lmain{width:940px;height:100%;margin:0 auto}
    #llogo{width:940px;height:43px;}
    #lmiddle{width:940px;height:500px}
    h1{color:orange}
   
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div class="top" style="text-align: left">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Default.aspx">你好！欢迎来到淘宝！</asp:HyperLink>&nbsp;
    </div>
    <div class="lmain">
         <div id="llogo" style="text-align: center">
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.bmp" /></div>
         <div id="lmiddle">
         <h1>您无权进行该操作，2秒钟后自动跳转到主页</h1>
         </div>
         <div class="footer" style="text-align: center">CopyRight&copy;版权所有，翻版必究，08数1第三小组</div>  
    </div>
    </form>
    </center>
</body>
</html>