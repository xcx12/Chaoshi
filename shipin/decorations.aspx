<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="decorations.aspx.cs" Inherits="shipin_decorations" Title="饰品频道/潮流饰品" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
     <div class="wrap">
         <div id="left">
             <div id="ltop">
                 <div id="ltopbg">品牌折扣区</div>
                 <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                     <ItemTemplate>
                         <table style="width:150px">
                             <tr>
                                 <td style="font-size: 9pt;" rowspan="4">
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
                 </asp:DataList>
             </div>
             <div id="lbottom">
                 <div id="lbottombg">饰品分类</div>
                
                     <asp:DataList ID="DataList2" runat="server">
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
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("spbh") %></td>
                             </tr>
                             <tr>
                                 <td style="color: #ff0000"><%# Eval("jg","{0:c2}") %></td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton1_Command" /></td>
                             </tr>
                         </table>
                     </ItemTemplate>
                     </asp:DataList>
                 
                     
             </div>
         </div>
         <div id="right">
            
          
             <div id="rbottom" style="font-size: 12pt">
                 <div id="rbottom1" style="text-align: left">
                     <div id="rbottombg1">情侣首饰推荐</div>
                     <asp:DataList ID="DataList7" runat="server" OnSelectedIndexChanged="DataList7_SelectedIndexChanged" RepeatColumns="2" RepeatDirection="Horizontal">
                     <ItemTemplate>
                         <table style="width:300px">
                             <tr>
                                 <td rowspan="4">
                                     <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("pic") %>'/></td>
                                 <td style="text-align: left">
                                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                             </tr>
                              <tr>
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("spbh") %></td>
                             </tr>
                             <tr>
                                 <td style="text-align: center; color: #ff0000;">
                                   <%# Eval("jg","{0:c2}") %></td>
                             </tr>
                             <tr>
                                 <td style="text-align: left">
                                     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton1_Command" /></td>
                             </tr>
                         </table>
                     </ItemTemplate>
                     </asp:DataList></div>
                 <div id="rbottom2" style="text-align: left">
                     <div id="rbottombg2" style="text-align: left">
                         经典项链推荐</div>
                     <asp:DataList ID="DataList8" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList8_SelectedIndexChanged">
                      <ItemTemplate>
                         <table style="width:300px">
                             <tr>
                                 <td rowspan="4">
                                     <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("pic") %>'/></td>
                                 <td style="text-align: left">
                                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                             </tr>
                              <tr>
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("spbh") %></td>
                             </tr>
                             <tr>
                                 <td style="text-align: center; color: #ff0000;">
                                   <%# Eval("jg","{0:c2}") %></td>
                             </tr>
                             <tr>
                                 <td style="text-align: left">
                                     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton1_Command" /></td>
                             </tr>
                         </table>
                     </ItemTemplate>
                     </asp:DataList></div>
                 <div id="rbottom3" style="text-align: left">
                     <div id="rbottombg3" style="text-align: left">热卖单品</div>
                     <asp:DataList ID="DataList9" runat="server" OnSelectedIndexChanged="DataList9_SelectedIndexChanged" RepeatColumns="2" RepeatDirection="Horizontal">
                      <ItemTemplate>
                         <table style="width:300px">
                             <tr>
                                 <td rowspan="4">
                                     <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("pic") %>'/></td>
                                 <td style="text-align: left">
                                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                             </tr>
                              <tr>
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("spbh") %></td>
                             </tr>
                             <tr>
                                 <td style="text-align: center; color: #ff0000;">
                                   <%# Eval("jg","{0:c2}") %></td>
                             </tr>
                             <tr>
                                 <td style="text-align: left">
                                     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton1_Command" /></td>
                             </tr>
                         </table>
                     </ItemTemplate>
                     </asp:DataList></div>
             </div>
         </div>
         
     </div>
     </center>
</asp:Content>

