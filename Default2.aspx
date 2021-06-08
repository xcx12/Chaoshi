<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" Title="搜索到的结果" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    &nbsp;<asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
        <table style="width:600px;text-align:center">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic") %>'/></td>
                <td>
                    商品名称：<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                <td>
                    商品价格：<%# Eval("jg") %></td>
                   
                <td>
                    折扣：<%# Eval("zk") %></td>
                    
            </tr>
        </table>
    </ItemTemplate>
    </asp:DataList><span style="font-size: 11pt">当前页：<asp:Label ID="Label1" runat="server"
        Text="1"></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上一页" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="下一页" /></span>
        </center>
</asp:Content>

