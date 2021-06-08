<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="hat.aspx.cs" Inherits="hat_hat" Title="女鞋/女靴" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="hatwrap">
    <div id="hattop" style="text-align: left">
        <div id="hatleft">
            <div id="hatpad1" style="text-align: left">品牌折扣</div>
            <div id="hatbottom" >
                <asp:Image ID="Image1" runat="server" ImageUrl="~/shoes/images/belle.jpg" />&nbsp;
                <asp:Image ID="Image3" runat="server" ImageUrl="~/shoes/images/lcos.jpg" />
                <asp:Image ID="Image2" runat="server" ImageUrl="~/shoes/images/dafuni.jpg" />
                &nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" ImageUrl="~/shoes/images/gife.jpg" />
                &nbsp;&nbsp;
            </div>
        </div>
        <div id="hatmiddle">
             <div id="hattupian"></div>
        </div>
        <div id="hatright">
               <div id="rigtophat" style="text-align: left; width:200px;height: 25px;"> &nbsp; </div>
               <div id="rigbottomhat" style="text-align: center">
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
          <div id="habtm">
                <div id="habtml">
                    <div id="halbg">
                        热卖推荐</div>
                        <center>
                    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
                       <ItemTemplate>
                         <table style="width:180px">
                             <tr>
                                 <td>
                                     <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("pic") %>'/></td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
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
                    </asp:DataList>
                    </center>
                    </div>
                    
                <div id="habtmr">
                    <div id="harbg">
                        商家专区</div>
                        <div id="sjzq"></div>
                </div>
          </div>
</div>
 </center>
</asp:Content>

