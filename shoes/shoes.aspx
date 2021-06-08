<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="shoes.aspx.cs" Inherits="shoes_shoes" Title="女包精品" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="showrap">
    <div id="shotop" style="text-align: left">
        <div id="sholeft">
            <div id="shopad1" style="text-align: left">公告</div>
            <div id="shobottom" style="text-align: center" >
                <table>
                    <tr>
                        <td style="width: 200px; text-align: center; color: #ff3300;">
                            <span style="font-size: 9pt">
                            【09】新品包包抢先看</span></td>
                    </tr>
                    <tr>
                        <td style="width: 200px; text-align: center;">
                            <span style="font-size: 9pt"></span></td>
                    </tr>
                    <tr>
                        <td style="width:200px; text-align: center; color: #ff3300;">
                            <span style="font-size: 9pt"></span></td>
                    </tr>
                    <tr>
                        <td style="width: 200px; text-align: center;">
                            <span style="font-size: 9pt"></span></td>
                    </tr>
                    <tr>
                        <td style="width: 200px; text-align: center; color: #ff3300;">
                            <span style="font-size: 9pt">【活动】我最爱的箱包TOP</span></td>
                    </tr>
                </table>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/shoes/images/top100.jpg" /></div>
        </div>
        <div id="shomiddle">
             <div id="shotupian"></div>
        </div>
        <div id="shoright">
               <div id="rigtopsho" style="text-align: left; width:200px;height: 25px;"> &nbsp;&nbsp; 夏季女鞋新品</div>
               <div id="rigbottomsho" style="text-align: center">
                   <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                         <table style="width:150px">
                             <tr>
                                 <td style="font-size: 9pt;" rowspan="3">
                                     <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("pic") %>' /></td>
                                 <td style="font-size: 9pt"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                             </tr>
                            
                             <tr>
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("jg","{0:c2}") %></td>
                             </tr>
                             <tr>
                                 <td style="font-size: 12pt; color: #ff0000;"><%# Eval("discount", "{0:c2}")%></td>
                             </tr>
                             
                         </table>
                     </ItemTemplate>
                   </asp:DataList></div>
         </div>
  
  </div>
         <div id="shbtm">
             <div id="shbtl">
                 <div id="shbtbg" style="text-align: left">
                     热卖推荐</div>
                 <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
                                      <ItemTemplate>
                         <table style="width:180px">
                             <tr>
                                 <td>
                                     <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("pic") %>'/></td>
                             </tr>
                             <tr>
                                 <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                             </tr>
                             <tr>
                                 <td style="color: #ff0000"><%# Eval("jg","{0:c2}") %></td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton2_Command" /></td>
                             </tr>
                         </table>
                     </ItemTemplate>
                 </asp:DataList></div>
             <div id="shbtr">
                 <div id="shbtg">
                     商家专区</div>
                     <div id="shde"></div>
                 </div>
         </div>
</div>
</center>
</asp:Content>

