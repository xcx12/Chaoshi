<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AddGoods.aspx.cs" Inherits="seller_files_AddGoods" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <table>
        <tr>
            <td colspan="2" style="background-color: #ff9900;width:500px">
            </td>
        </tr>
        <tr>
            <td style="width:30%">
                商品名称：</td>
            <td>
                <asp:TextBox ID="spmc" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="spmc"
                    ErrorMessage="商品名称不能为空">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                类别名称：</td>
            <td>
                <asp:RadioButton ID="clothes" runat="server" GroupName="fl" Text="品牌女装" />
                <asp:RadioButton ID="decorations" runat="server" GroupName="fl" Text="潮流饰品" />
                <asp:RadioButton ID="shoes" runat="server" GroupName="fl" Text="女鞋/靴子" />
                <asp:RadioButton ID="bags" runat="server" GroupName="fl" Text="女包/精品" /></td>
        </tr>
        <tr>
            <td>
                商品价格：</td>
            <td>
                <asp:TextBox ID="price" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="price"
                    ErrorMessage="价格不能为空">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                商品图片：</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                商品数量：</td>
            <td>
                <asp:TextBox ID="amount" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="amount"
                    ErrorMessage="数量不能为空">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                商品备注：</td>
            <td>
                <asp:TextBox ID="bz" runat="server" Height="75px" TextMode="MultiLine" Width="269px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="background-color: #ff9900" colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认，开始上传" /></td>
        </tr>
    </table>
</center>
</asp:Content>

