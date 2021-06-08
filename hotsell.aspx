<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="hotsell.aspx.cs" Inherits="hotsell" Title="所有商品" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="hotwrap">
    &nbsp;<asp:Label ID="Label1" runat="server" Text="1"></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="上一页" OnClick="Button1_Click"  />
    <asp:Button ID="Button2" runat="server" Text="下一页" OnClick="Button2_Click"  />&nbsp;
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            
            <table>
                <tr>
                    <td rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic") %>' /></td>
                    <td style="text-align: left">
                        商品名称：<%# Eval("spmc") %></td>
                </tr>
                 <tr>
                    <td style="text-align: left">
                        商品编号：<%# Eval("spbh") %></td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        价格：<%# Eval("jg") %></td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        折扣：<%# Eval("discount") %></td>
                </tr>
                
                <tr>
                    <td style="height: 18px">
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("spbh") %>'
                            ImageUrl="~/images/cart.png" OnCommand="lbtnBuy_Command" /></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList></div>
</asp:Content>

