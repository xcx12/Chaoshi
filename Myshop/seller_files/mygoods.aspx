<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="mygoods.aspx.cs" Inherits="seller_files_mygoods" Title="我供应的商品" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="hotwrap">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myshopConnectionString %>"
        SelectCommand="SELECT [spbh], [spmc], [lbbh], [lbmc], [jg], [pic], [sl], [gysbh], [zk], [bz] FROM [sp]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [sp] WHERE [spbh] = @original_spbh AND [spmc] = @original_spmc AND [lbbh] = @original_lbbh AND [lbmc] = @original_lbmc AND [jg] = @original_jg AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND [sl] = @original_sl AND (([gysbh] = @original_gysbh) OR ([gysbh] IS NULL AND @original_gysbh IS NULL)) AND (([zk] = @original_zk) OR ([zk] IS NULL AND @original_zk IS NULL)) AND (([bz] = @original_bz) OR ([bz] IS NULL AND @original_bz IS NULL))" InsertCommand="INSERT INTO [sp] ([spmc], [lbbh], [lbmc], [jg], [pic], [sl], [gysbh], [zk], [bz]) VALUES (@spmc, @lbbh, @lbmc, @jg, @pic, @sl, @gysbh, @zk, @bz)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [sp] SET [spmc] = @spmc, [lbbh] = @lbbh, [lbmc] = @lbmc, [jg] = @jg, [pic] = @pic, [sl] = @sl, [gysbh] = @gysbh, [zk] = @zk, [bz] = @bz WHERE [spbh] = @original_spbh AND [spmc] = @original_spmc AND [lbbh] = @original_lbbh AND [lbmc] = @original_lbmc AND [jg] = @original_jg AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND [sl] = @original_sl AND (([gysbh] = @original_gysbh) OR ([gysbh] IS NULL AND @original_gysbh IS NULL)) AND (([zk] = @original_zk) OR ([zk] IS NULL AND @original_zk IS NULL)) AND (([bz] = @original_bz) OR ([bz] IS NULL AND @original_bz IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_spbh" Type="Int32" />
            <asp:Parameter Name="original_spmc" Type="String" />
            <asp:Parameter Name="original_lbbh" Type="Int32" />
            <asp:Parameter Name="original_lbmc" Type="String" />
            <asp:Parameter Name="original_jg" Type="Decimal" />
            <asp:Parameter Name="original_pic" Type="String" />
            <asp:Parameter Name="original_sl" Type="Int32" />
            <asp:Parameter Name="original_gysbh" Type="String" />
            <asp:Parameter Name="original_zk" Type="Double" />
            <asp:Parameter Name="original_bz" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="spmc" Type="String" />
            <asp:Parameter Name="lbbh" Type="Int32" />
            <asp:Parameter Name="lbmc" Type="String" />
            <asp:Parameter Name="jg" Type="Decimal" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="sl" Type="Int32" />
            <asp:Parameter Name="gysbh" Type="String" />
            <asp:Parameter Name="zk" Type="Double" />
            <asp:Parameter Name="bz" Type="String" />
            <asp:Parameter Name="original_spbh" Type="Int32" />
            <asp:Parameter Name="original_spmc" Type="String" />
            <asp:Parameter Name="original_lbbh" Type="Int32" />
            <asp:Parameter Name="original_lbmc" Type="String" />
            <asp:Parameter Name="original_jg" Type="Decimal" />
            <asp:Parameter Name="original_pic" Type="String" />
            <asp:Parameter Name="original_sl" Type="Int32" />
            <asp:Parameter Name="original_gysbh" Type="String" />
            <asp:Parameter Name="original_zk" Type="Double" />
            <asp:Parameter Name="original_bz" Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="spmc" Type="String" />
            <asp:Parameter Name="lbbh" Type="Int32" />
            <asp:Parameter Name="lbmc" Type="String" />
            <asp:Parameter Name="jg" Type="Decimal" />
            <asp:Parameter Name="pic" Type="String" />
            <asp:Parameter Name="sl" Type="Int32" />
            <asp:Parameter Name="gysbh" Type="String" />
            <asp:Parameter Name="zk" Type="Double" />
            <asp:Parameter Name="bz" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        DataKeyNames="spbh" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="3">
        <Columns>
            <asp:BoundField DataField="spbh" HeaderText="商品编号" ReadOnly="True" SortExpression="spbh" />
            <asp:BoundField DataField="spmc" HeaderText="商品名称" SortExpression="spmc" />
            <asp:BoundField DataField="lbmc" HeaderText="类别名称" SortExpression="lbmc" />
            <asp:BoundField DataField="lbbh" HeaderText="类别编号" SortExpression="lbbh" />
            <asp:BoundField DataField="jg" HeaderText="单价" SortExpression="jg" />
            <asp:BoundField DataField="pic" HeaderText="图片" SortExpression="pic" />
            <asp:BoundField DataField="sl" HeaderText="数量" SortExpression="sl" />
            <asp:BoundField DataField="bz" HeaderText="备注" SortExpression="bz" />
            <asp:BoundField DataField="zk" HeaderText="折扣" SortExpression="zk" />
            <asp:BoundField DataField="gysbh" HeaderText="供应商编号" SortExpression="gysbh" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <RowStyle BackColor="#EFF3FB" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/seller_files/AddGoods.aspx">点击上传商品</asp:HyperLink>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Order_no"
        DataSourceID="SqlDataSource2" GridLines="Vertical" PageSize="3">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="Order_no" HeaderText="订单编号" InsertVisible="False" ReadOnly="True"
                SortExpression="Order_no" />
            <asp:BoundField DataField="Order_email" HeaderText="电子邮箱" SortExpression="Order_email" />
            <asp:BoundField DataField="Order_totalPrice" HeaderText="总价" SortExpression="Order_totalPrice" />
            <asp:BoundField DataField="User_useName" HeaderText="买家账号" SortExpression="User_useName" />
            <asp:BoundField DataField="Order_zip" HeaderText="邮编" SortExpression="Order_zip" />
            <asp:BoundField DataField="Order_address" HeaderText="地址" SortExpression="Order_address" />
            <asp:BoundField DataField="Order_phone" HeaderText="联系电话" SortExpression="Order_phone" />
            <asp:BoundField DataField="Order_isConfirm" HeaderText="是否发货" SortExpression="Order_isConfirm" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="Gainsboro" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myshopConnectionString %>"
        SelectCommand="SELECT [Order_email], [Order_totalPrice], [User_useName], [Order_zip], [Order_address], [Order_no], [Order_phone], [Order_isConfirm] FROM [z_OrderInfo]" DeleteCommand="DELETE FROM [z_OrderInfo] WHERE [Order_no] = @Order_no" InsertCommand="INSERT INTO [z_OrderInfo] ([Order_email], [Order_totalPrice], [User_useName], [Order_zip], [Order_address], [Order_phone], [Order_isConfirm]) VALUES (@Order_email, @Order_totalPrice, @User_useName, @Order_zip, @Order_address, @Order_phone, @Order_isConfirm)" UpdateCommand="UPDATE [z_OrderInfo] SET [Order_email] = @Order_email, [Order_totalPrice] = @Order_totalPrice, [User_useName] = @User_useName, [Order_zip] = @Order_zip, [Order_address] = @Order_address, [Order_phone] = @Order_phone, [Order_isConfirm] = @Order_isConfirm WHERE [Order_no] = @Order_no">
        <DeleteParameters>
            <asp:Parameter Name="Order_no" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Order_email" Type="String" />
            <asp:Parameter Name="Order_totalPrice" Type="String" />
            <asp:Parameter Name="User_useName" Type="String" />
            <asp:Parameter Name="Order_zip" Type="String" />
            <asp:Parameter Name="Order_address" Type="String" />
            <asp:Parameter Name="Order_phone" Type="String" />
            <asp:Parameter Name="Order_isConfirm" Type="String" />
            <asp:Parameter Name="Order_no" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="Order_email" Type="String" />
            <asp:Parameter Name="Order_totalPrice" Type="String" />
            <asp:Parameter Name="User_useName" Type="String" />
            <asp:Parameter Name="Order_zip" Type="String" />
            <asp:Parameter Name="Order_address" Type="String" />
            <asp:Parameter Name="Order_phone" Type="String" />
            <asp:Parameter Name="Order_isConfirm" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px"
        CellPadding="3" DataKeyNames="Order_DetailID" DataSourceID="SqlDataSource3" GridLines="Horizontal"
        PageSize="3">
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <Columns>
            <asp:BoundField DataField="Order_No" HeaderText="订单编号" SortExpression="Order_No" />
            <asp:BoundField DataField="Order_DetailID" HeaderText="订单详情编号" InsertVisible="False"
                ReadOnly="True" SortExpression="Order_DetailID" />
            <asp:BoundField DataField="User_useName" HeaderText="买家账号" SortExpression="User_useName" />
            <asp:BoundField DataField="Goods_Name" HeaderText="商品名称" SortExpression="Goods_Name" />
            <asp:BoundField DataField="Order_price" HeaderText="订单价格" SortExpression="Order_price" />
            <asp:BoundField DataField="Order_goodsNum" HeaderText="数量" SortExpression="Order_goodsNum" />
            <asp:BoundField DataField="Goods_ID" HeaderText="产品ID" SortExpression="Goods_ID" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:myshopConnectionString %>"
        SelectCommand="SELECT [Order_DetailID], [User_useName], [Goods_Name], [Order_price], [Order_goodsNum], [Goods_ID], [Order_No] FROM [z_OrderDetail]">
    </asp:SqlDataSource>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp; &nbsp; &nbsp; &nbsp;
    &nbsp;&nbsp;
</div>
</center>
</asp:Content>

