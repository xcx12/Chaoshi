<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="clothes.aspx.cs" Inherits="clothes_clothes" Title="潮流服饰" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<div class="clowrap">
     <div id="clotop" style="text-align: left">
         <div id="clotleft" style="width: 200px; height: 280px">
                 <div id="topad">
                         <div id="topad1" style="text-align: left">公告</div>
                          <div id="topad2" style="width: 189px; height: 89px"></div>
                 </div>
                     <div id="bottomad" style="width: 176px; height: 109px; text-align: center;">
                            <div id="xiaoxi" style="text-align: left; width: 200px; height: 25px;">最新消息</div>
                            <table style="width:190px">
                                <tr>
                                    <td style="color: #ff6600">
                                        <span style="font-size: 9pt">【疯抢】皇冠卖家限时5折抢购</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span style="font-size: 9pt">【疯抢】外套亏本大促销1元起</span></td>
                                </tr>
                                <tr>
                                    <td style="color: #ff6600">
                                        <span style="font-size: 9pt">【折扣】冬装3折限量促销仅1天</span></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span style="font-size: 9pt">【热】限时打折修身长款毛衣</span></td>
                                </tr>
                            </table>
                     </div>
          </div>
            <div id="clotmiddle">
                  <div id="tupian"></div>
             </div>
          <div id="cloright" style="text-align: center">
              <div id="rigtop1" style="text-align: center">
                年终大促销——疯狂抢购</div>
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
              </asp:DataList></div></div>
              <div id="clobtm">
              
                 <div id="clobtml">
                      <div class="clobtm1">
                          <div class="clobtmbg" style="text-align: left">
                              女装新区</div>
                             
                          
                          <asp:DataList ID="DataList2" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                              <ItemTemplate>
                                   <table style="width:100px">
                              <tr>
                              <td>
                                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic")%>' /></td>
                              </tr>
                              <tr>
                              <td>
                                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                              </tr>
                               <tr>
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("spbh") %></td>
                             </tr>
                              <tr>
                              <td style="color: #ff0000"><%# Eval("jg","{0:c2}") %></td>
                              </tr>
                               <tr>
                                  <td>
                                      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton3_Command" /></td>
                              </tr>
                          </table>
                              </ItemTemplate>
                          </asp:DataList></div>
                      <div class="clobtm1">
                           <div class="clobtmbg">
                               精品区--混搭流行馆</div>
                               <div id="btmad2"></div>
                         
                          <asp:DataList ID="DataList3" runat="server" OnSelectedIndexChanged="DataList3_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
                           <ItemTemplate>
                                   <table style="width:100px">
                              <tr>
                              <td>
                                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic")%>' /></td>
                              </tr>
                              <tr>
                              <td>
                                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                              </tr>
                               <tr>
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("spbh") %></td>
                             </tr>
                              <tr>
                              <td style="color: #ff0000"><%# Eval("jg","{0:c2}") %></td>
                              </tr>
                               <tr>
                                  <td>
                                      <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton3_Command" /></td>
                              </tr>
                          </table>
                              </ItemTemplate>
                          </asp:DataList></div>
                      <div class="clobtm1"><div class="clobtmbg">
                          精品区--日韩馆</div>
                          <div id="btmad3"></div>
                          
                          <asp:DataList ID="DataList4" runat="server" OnSelectedIndexChanged="DataList4_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
                           <ItemTemplate>
                                   <table style="width:100px">
                              <tr>
                              <td>
                                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic")%>' /></td>
                              </tr>
                              <tr>
                              <td>
                                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                              </tr>
                               <tr>
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("spbh") %></td>
                             </tr>
                              <tr>
                              <td style="color: #ff0000"><%# Eval("jg","{0:c2}") %></td>
                              </tr>
                              <tr>
                                  <td>
                                      <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton3_Command" /></td>
                              </tr>
                          </table>
                              </ItemTemplate>
                          </asp:DataList></div>
                 </div>
                  <div id="clobtmr">
                      <div id="clobtmbg">
                          女装品牌</div>
                      <asp:DataList ID="DataList5" runat="server" OnSelectedIndexChanged="DataList5_SelectedIndexChanged">
                      <ItemTemplate>
                                   <table style="width:100px">
                              <tr>
                              <td>
                                  <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("pic")%>' /></td>
                              </tr>
                              <tr>
                              <td>
                                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","../goods_details.aspx?a={0}") %>'><%# Eval("spmc") %></asp:HyperLink></td>
                              </tr>
                               <tr>
                                 <td style="font-size: 11pt; color: gray;text-decoration:line-through"><%# Eval("spbh") %></td>
                             </tr>
                              <tr>
                              <td style="color: #ff0000"><%# Eval("jg","{0:c2}") %></td>
                              </tr>
                              <tr>
                                  <td>
                                      <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/cart.png" CommandArgument='<%# Eval("spbh") %>' OnCommand="ImageButton3_Command" /></td>
                              </tr>
                          </table>
                              </ItemTemplate>
                      </asp:DataList></div>
              </div>
     
</div>
</center>
   

</asp:Content>

