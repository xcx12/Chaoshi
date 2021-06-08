<%@ Page Language="C#" EnableEventValidation="false"  MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="goods_details.aspx.cs" Inherits="goods_details" Title="商品详细信息" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="hotwrap">
    <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
<ItemTemplate>
            
            <table style="width:320px">
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
                    <td>
                        &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("spbh") %>'
                            ImageUrl="~/images/cart.png" OnCommand="lbtnBuy_Command" /></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList></div>
    </center>
</asp:Content>

