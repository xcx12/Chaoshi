<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="User_Car.aspx.cs" Inherits="shoppingCart" Title="我的购物车" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <span style="font-size: 16pt; font-family: 楷体_GB2312">您的购物车
        <hr style="color: black" />
    </span>
    <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" GridLines="Horizontal" Width="600px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <Columns>
            <asp:BoundField DataField="no" HeaderText="序号" ReadOnly="True" />
            <asp:BoundField DataField="GoodsID" HeaderText="产品ID" />
            <asp:BoundField DataField="goodsName" HeaderText="产品名称" ReadOnly="True" />
            <asp:TemplateField HeaderText="订购数量">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("GoodsNum") %>' Width="43px"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="price" HeaderText="单价" ReadOnly="True" />
            <asp:BoundField DataField="totalPrice" HeaderText="总价" ReadOnly="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("GoodsID") %>'
                        OnCommand="LinkButton1_Command">删除</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView>
    <table style="width: 600px">
        <tr>
            <td colspan="3" rowspan="1" style="text-align: right">
                <asp:Label ID="Label1" runat="server"></asp:Label>&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" rowspan="3" style="height: 26px; text-align: center;">
                <asp:Button ID="btnUpdate" runat="server" Text="更新数量" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnEmpty" runat="server" Text="清空购物车" OnClick="btnEmpty_Click" />
                <asp:Button ID="btnBuy" runat="server" Text="继续购物" OnClick="btnBuy_Click" />
                <asp:Button ID="btnEnd" runat="server" Text="我要结账" OnClick="btnEnd_Click" /></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
    </center>
</asp:Content>

