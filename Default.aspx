<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="淘！我喜欢！" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="dwrap">
    <div id="dmain">
        <div id="deleft">
            <div id="deltop">
                <div id="deltl">
                    <div id="deltlt" style="text-align: left; height: 141px;">
                        <div class="deltltbg">
                            公告栏
                         </div>
                         <table style="width:105%;height:39%">
                             <tr>
                                 <td style="width: 8px" rowspan="3">
                                     <asp:Image ID="Image1" runat="server"  /></td>
                                 <td>
                                     <span style="font-size: 9pt"></span></td>
                             </tr>
                             <tr>
                                 <td>
                                     <span style="font-size: 9pt"></span></td>
                             </tr>
                             <tr>
                                 <td style="height: 18px">
                                     <span style="font-size: 9pt"></span></td>
                             </tr>

                            
                         </table>
                         <table style="width:105%">
                             <tr>
                                 <td rowspan="3">
                                     <asp:Image ID="Image2" runat="server"  /></td>
                                 <td style="width: 126px">
                                     <span style="font-size: 9pt"> &nbsp; &nbsp;</span></td>
                             </tr>
                             <tr>
                                 <td style="width: 126px">
                                     <span style="font-size: 9pt">施华洛世奇入驻</span></td>
                             </tr>
                             <tr>
                                 <td style="width: 126px">
                                     <span style="font-size: 9pt">618大促还剩3天</span></td>
                             </tr>
                         </table>
                         <table style="width:105%">
                             <tr>
                                 <td style="width: 5px" rowspan="3">
                                     <asp:Image ID="Image3" runat="server"  /></td>
                                 <td style="width: 143px">
                                     <span style="font-size: 9pt"></span></td>
                             </tr>
                             <tr>
                                 <td style="width: 143px">
                                     <span style="font-size: 9pt"></span></td>
                             </tr>
                             <tr>
                                 <td style="width: 143px; height: 18px">
                                     <span style="font-size: 9pt"></span></td>
                             </tr>
                         </table>
                    </div>
                </div>
                <div id="deltm">
                    <div id="deltmn"></div>
                    <div id="deltmd">
                        <div id="adbg">
                            <div id="adbgt" style="text-align: left">
                                &nbsp;<span style="font-size: 11pt; color: #ff6600;">买就送30元红包&nbsp;
                                        百雀羚7件套85元</span></div>
                        </div>
                    </div>
                </div>
                <div id="deltr">
                    
                    <div id="deltr2">
                       
                    </div>
                    
                </div>
            </div>
            <div id="delbottom" style="text-align: left">
                   <div id="delfl">
                       宝贝类目</div>
                    <div id="delfel" style="text-align: left">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myshopConnectionString %>"
                            SelectCommand="SELECT [lbmc] FROM [splb]"></asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
                            <ItemTemplate>
                               <table style="width:100px">
                                   <tr>
                                       <td style="width:30%; text-align: center;">
                                           <asp:Image ID="Image4" runat="server" ImageUrl="~/images/flower.jpg" /></td>
                                       <td><%# Eval("lbmc") %></td>
                                   </tr>
                               </table>
                            </ItemTemplate>
                        </asp:DataList></div>
                        
                        <div id="delhot">
                         <div id="delhotbg">
                             热卖单品</div>
                             <div id="deldet" style="text-align: center">
                                 <asp:DataList ID="DataList3" runat="server" OnSelectedIndexChanged="DataList3_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
                                 <ItemTemplate>
                                 <table style="width:200px">
                                     <tr>
                                         <td style="text-align: center">
                                             <asp:Image ID="Image6" runat="server" ImageUrl='<%# Eval("pic") %>' /></td>
                                     </tr>
                                     <tr>
                                         <td style="text-align: center">
                                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","goods_details.aspx?a={0}") %>'  ><%# Eval("spmc") %></asp:HyperLink>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td style="color: #ff0000; text-align: center;"><%# Eval("jg","{0:c2}") %></td>
                                     </tr>
                                 </table>
                                 </ItemTemplate>
                                 </asp:DataList>&nbsp;当前页：<asp:Label ID="Label2" runat="server" Text="1"></asp:Label>
                                 <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="<<" />
                                 <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text=">>" /></div>
                                 <div id="delb">
                                     <div id="delbl" style="text-align: center">
                                          <div class="delbgg">
                                              精彩资讯</div>
                                              <table style="width:320px">
                                                  <tr>
                                                      <td rowspan="3" style="width:30%">
                                                          <asp:Image ID="Image9" runat="server" ImageUrl="~/images/deb1.jpg" /></td>
                                                      <td style="color: #ff6600" colspan="2">
                                                          经典暖色宜家样板</td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          20款寒冬必备外套</td>
                                                  </tr>
                                                  <tr>
                                                      <td style="color: #ff6600" colspan="2">
                                                          年终秒杀1元起</td>
                                                  </tr>
                                                  <tr>
                                                      <td></td>
                                                      <td></td>
                                                      <td></td>
                                                  </tr>
                                                  
                                                  <tr>
                                                      <td rowspan="3">
                                                          <asp:Image ID="Image10" runat="server" ImageUrl="~/images/deb2.png" /></td>
                                                      <td colspan="2">
                                                          寒冬靓丽百搭配件</td>
                                                  </tr>
                                                  <tr>
                                                      <td style="color: #ff6600" colspan="2">
                                                          冬天拯救皮肤大计</td>
                                                  </tr>
                                                  <tr>
                                                      <td style="height: 13px" colspan="2">
                                                          美丽加分毛衣系列</td>
                                                  </tr>
                                              </table>
                                     </div>
                                     <div id="delbr" style="text-align: center">
                                          <div class="delbgg">
                                              社区新闻</div>
                                              <table style="width:320px">
                                                  <tr>
                                                      <td rowspan="3" style="width:30%">
                                                          <asp:Image ID="Image7" runat="server" ImageUrl="~/images/deb.jpg" /></td>
                                                      <td colspan="2">
                                                          圣诞节最好礼物</td>
                                                  </tr>
                                                  <tr>
                                                      <td style="color: #ff6600" colspan="2">
                                                          明星情侣大晒甜蜜</td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          淘宝赚钱高招</td>
                                                  </tr>
                                                  <tr>
                                                      <td></td>
                                                      <td></td>
                                                      <td></td>
                                                  </tr>
                                                  
                                                  <tr>
                                                      <td rowspan="3">
                                                          <asp:Image ID="Image8" runat="server" ImageUrl="~/images/debg.png" /></td>
                                                      <td style="color: #ff6600" colspan="2">
                                                          圣诞美丽饰品升级</td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          终极秒杀即将开始</td>
                                                  </tr>
                                                  <tr>
                                                      <td style="color: #ff6600" colspan="2">
                                                          最美丽的圣诞节</td>
                                                  </tr>
                                              </table>
                                     </div>
                                 </div>
                                
                        </div>
                        
               </div>
        </div>
        <div id="deright">
            <div id="dert">
                <div id="dertt"></div>
                <div id="dertd"></div>
            </div>
            <div id="debg" style="text-align: left">
                猜你喜欢</div>
            <div id="delguess">
                &nbsp;<asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                  <ItemTemplate>
                                 <table style="width:180px">
                                     <tr>
                                         <td style="text-align: center">
                                             <asp:Image ID="Image6" runat="server" ImageUrl='<%# Eval("pic") %>' /></td>
                                     </tr>
                                     <tr>
                                         <td style="text-align: center">
                                             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("spmc","goods_details.aspx?a={0}") %>'  ><%# Eval("spmc") %></asp:HyperLink>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td style="color: #ff0000; text-align: center;"><%# Eval("jg","{0:c2}") %></td>
                                     </tr>
                                 </table>
                                 </ItemTemplate>
                </asp:DataList><span style="font-size: 9pt">当前页：</span>
                <asp:Label ID="Label1" runat="server" Text="1"></asp:Label>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="<<" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text=">>" OnClick="Button2_Click" /></div>
                <div id="rad1"></div>
                <div id="rad2"></div>
                <div id="rad3"></div>
                <div id="rad4" style="text-align: left">
                    淘宝安全</div>
                <div id="rad5">
                    <ul>
                        <li class="sec">被骗！揭露快递内幕</li><li class="sec">牛！史上最全防骗术</li><li class="sec">惊！皇冠卖家也被骗</li><li class="sec">淘买家五年购物心得</li></ul>
                </div>
        </div>
    </div>   
</div>
</asp:Content>
