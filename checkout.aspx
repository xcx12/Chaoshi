<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="checkout" Title="我要结账" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <span style="font-size: 16pt; font-family: 楷体_GB2312">服务台
        <hr style="color: black" />
    </span>
    <table style="width: 600px">
        <tr>
            <td colspan="3" rowspan="3" style="height: 20px; text-align: left">
                您的购物车：（如需要修改请到购物车处修改）</td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
    </table>
    <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>&nbsp;
    <table style="width: 600px">
        <tr>
            <td colspan="3" rowspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None" Width="600px">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:BoundField DataField="no" HeaderText="序号" ReadOnly="True" />
                        <asp:BoundField DataField="GoodsID" HeaderText="产品ID" />
                        <asp:BoundField DataField="goodsName" HeaderText="产品名称" ReadOnly="True" />
                        <asp:BoundField DataField="GoodsNum" HeaderText="订购数量" />
                        <asp:BoundField DataField="price" HeaderText="单价" ReadOnly="True" />
                        <asp:BoundField DataField="totalPrice" HeaderText="总价" ReadOnly="True" />
                    </Columns>
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
        </tr>
        <tr>
            <td colspan="3" style="border-bottom: black 1px dashed; text-align: right">
                总价：<asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>
    </table>
    <table style="width: 600px">
        <tr>
            <td colspan="3" rowspan="3" style="width: 30%; text-align: right">
                接收人姓名：</td>
            <td colspan="1" rowspan="3" style="text-align: left">
                <asp:TextBox ID="tbName" runat="server" Width="213px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName"
                    ErrorMessage="请输入接收人姓名"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
        </tr>
        <tr>
        </tr>
        <tr>
            <td colspan="3" rowspan="1" style="width: 30%; text-align: right">
                接收人地址：</td>
            <td colspan="1" rowspan="1" style="text-align: left">
                <asp:TextBox ID="tbAddr" runat="server" Width="383px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAddr"
                    ErrorMessage="请输入接收人地址"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3" rowspan="1" style="width: 30%; text-align: right">
                接收人邮编：</td>
            <td colspan="1" rowspan="1" style="text-align: left">
                <asp:TextBox ID="tbZip" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbZip"
                    ErrorMessage="请输入接收人邮编"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3" rowspan="1" style="width: 30%; text-align: right">
                接收人电话：</td>
            <td colspan="1" rowspan="1" style="text-align: left">
                <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbPhone"
                    ErrorMessage="请输入接收人电话"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3" rowspan="1" style="width: 30%; text-align: right">
                接收人Email：</td>
            <td colspan="1" rowspan="1" style="text-align: left">
                <asp:TextBox ID="tbEmail" runat="server" Width="309px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbEmail"
                    ErrorMessage="请输入接收人Email"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="4" rowspan="1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认购买" /></td>
        </tr>
    </table>
    </center>
</asp:Content>

