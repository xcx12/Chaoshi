<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="buyed.aspx.cs" Inherits="buyer_files_buyed" Title="我的订单" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="hotwrap">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3"
        CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None">
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="Goods_ID" HeaderText="产品ID" SortExpression="Goods_ID" />
            <asp:BoundField DataField="Goods_Name" HeaderText="产品名称" SortExpression="Goods_Name" />
            <asp:BoundField DataField="Order_goodsNum" HeaderText="购买数量" SortExpression="Order_goodsNum" />
            <asp:BoundField DataField="Order_price" HeaderText="总价格" SortExpression="Order_price" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myshopConnectionString %>"
        SelectCommand="SELECT [Goods_ID], [Order_goodsNum], [Order_price], [Goods_Name] FROM [z_OrderDetail] WHERE ([User_useName] = @User_useName)">
        <SelectParameters>
            <asp:SessionParameter Name="User_useName" SessionField="UserName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Order_no"
        DataSourceID="SqlDataSource2" GridLines="Vertical">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="Order_no" HeaderText="订单编号" InsertVisible="False" ReadOnly="True"
                SortExpression="Order_no" />
            <asp:BoundField DataField="Order_address" HeaderText="订单地址" SortExpression="Order_address" />
            <asp:BoundField DataField="Order_zip" HeaderText="邮政编码" SortExpression="Order_zip" />
            <asp:BoundField DataField="Order_totalPrice" HeaderText="订单总价" SortExpression="Order_totalPrice" />
            <asp:BoundField DataField="Order_phone" HeaderText="订单电话" SortExpression="Order_phone" />
            <asp:BoundField DataField="Order_email" HeaderText="邮箱" SortExpression="Order_email" />
            <asp:BoundField DataField="Order_isConfirm" HeaderText="是否发货" SortExpression="Order_isConfirm" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="Gainsboro" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myshopConnectionString %>"
        SelectCommand="SELECT [Order_no], [Order_address], [Order_zip], [Order_totalPrice], [Order_phone], [Order_email], [Order_isConfirm] FROM [z_OrderInfo] WHERE ([User_useName] = @User_useName)">
        <SelectParameters>
            <asp:SessionParameter Name="User_useName" SessionField="UserName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
        CellPadding="3" DataKeyNames="Order_DetailID" DataSourceID="SqlDataSource3" GridLines="Horizontal">
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <Columns>
            <asp:BoundField DataField="Order_No" HeaderText="订单编号" SortExpression="Order_No" />
            <asp:BoundField DataField="Order_DetailID" HeaderText="订单详细编号" InsertVisible="False"
                ReadOnly="True" SortExpression="Order_DetailID" />
            <asp:BoundField DataField="Goods_ID" HeaderText="商品ID" SortExpression="Goods_ID" />
            <asp:BoundField DataField="Goods_Name" HeaderText="商品名称" SortExpression="Goods_Name" />
            <asp:BoundField DataField="Order_price" HeaderText="总价" SortExpression="Order_price" />
            <asp:BoundField DataField="Order_goodsNum" HeaderText="商品数量" SortExpression="Order_goodsNum" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myshopConnectionString %>"
        SelectCommand="SELECT [Order_DetailID], [Goods_Name], [Order_price], [Order_goodsNum], [Goods_ID], [Order_No] FROM [z_OrderDetail]">
    </asp:SqlDataSource>
    &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp;
    &nbsp; &nbsp;
    &nbsp;&nbsp;
</div>
</center>
</asp:Content>

