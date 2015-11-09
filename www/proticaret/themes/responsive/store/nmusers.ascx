<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="nmusers.ascx.vb" Inherits="ASPNetPortal.cnmusers" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register TagPrefix="ew" Namespace="eWorld.UI" Assembly="eWorld.UI" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div id="Affiliateuserlist" class="module">
	<div class="moduleTitle">
    	Network Marketting Üyeleri
    </div>
    <div class="moduleContent moduleContentCol1">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:HyperLink ID="lnkAddNew" runat="server" CssClass="addbutton" Visible="False">Yeni Ekle</asp:HyperLink>
                    <asp:Label ID="msg" runat="server" Visible="False"></asp:Label>
                    <div class="formContent clearFix">
                    <div class="moduleContentCol2 inputButton">
                    	<label>Kullanıcı Adı</label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="ddlfilter" runat="server">
                            <asp:ListItem Value="like '%[]%'">içerir</asp:ListItem>
                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="moduleContentCol2 inputButton">
                    	<label>E-mail</label>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="ddlemail" runat="server">
                            <asp:ListItem Value="like '%[]%'">içerir</asp:ListItem>
                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="moduleContentCol2 inputButton">
                    	<label>Adı Soyadı</label>
                        <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="ddlFulnameFilter" runat="server">
                            <asp:ListItem Value="like '%[]%'">içerir</asp:ListItem>
                            <asp:ListItem Value="like '[]%'">Başlar</asp:ListItem>
                            <asp:ListItem Value="like '%[]'">Biter</asp:ListItem>
                            <asp:ListItem Value="='[]'">Eşittir</asp:ListItem>
                        </asp:DropDownList>
                        
                    </div>
                    <div class="moduleContentCol2 inputButton">
                    	<label>&nbsp;</label>
                        <asp:LinkButton ID="btnSearch" runat="server" CssClass="button">Ara</asp:LinkButton>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                    </div>
                    <div class="dataTable hidden">
                        <asp:DataGrid ID="Datagrid1" CellPadding="4" runat="server" Width="100%" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" CssClass="datalist">
                            <HeaderStyle CssClass="title" />
                            <Columns>
                                <asp:BoundColumn DataField="UserId" SortExpression="UserId" HeaderText="IND">
                                    <HeaderStyle Width="0px"></HeaderStyle>
                                </asp:BoundColumn>
                                <asp:BoundColumn DataField="email" HeaderText="E-Mail" SortExpression="email"></asp:BoundColumn>
                                <asp:BoundColumn DataField="Name" SortExpression="Name" HeaderText="K. Adı"></asp:BoundColumn>
                                <asp:BoundColumn DataField="FullName" SortExpression="FullName" HeaderText="Adı Soyadı"></asp:BoundColumn>
    
                                <asp:BoundColumn DataField="NetworkSponsorId" SortExpression="NetworkSponsorId" HeaderText="Net. SponsorId"></asp:BoundColumn>
    
                                <asp:BoundColumn DataField="NetworkRank" SortExpression="NetworkRank" HeaderText="Net. Rank"></asp:BoundColumn>
    
                                <asp:BoundColumn DataField="TotalOrders" SortExpression="TotalOrders" HeaderText="T. Kazanç" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                                <asp:BoundColumn DataField="TotalPayments" SortExpression="TotalPayments" HeaderText="T. Ödeme" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                                <asp:BoundColumn DataField="TotalLeft" SortExpression="TotalLeft" HeaderText="T. Bakiye" DataFormatString="{0:0.00 TL}" ItemStyle-HorizontalAlign="Right"></asp:BoundColumn>
                                <asp:BoundColumn DataField="CreatedDate" SortExpression="CreatedDate" HeaderText="Kayıt Tarihi"></asp:BoundColumn>
                            </Columns>
                            <PagerStyle Mode="NumericPages" PageButtonCount="15" CssClass="dataPager" />
                        </asp:DataGrid>
                    </div>
                    <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
                        <ProgressTemplate>
                            <div class="modalPopup">
                                <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif"align="middle" /></p>
                                <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                            </div>
                        </ProgressTemplate>
                    </asp:ModalUpdateProgress>
                    <asp:Label ID="lblSort" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl" runat="server" Visible="False"></asp:Label>
                     <div class="dataCount">
                        <ul>
                            <li><%=GetGlobalResourceObject("lang", "TotalRecords")%> : <b><asp:Label ID="lblTotalRecord" runat="server"></asp:Label></b></li>
                            <li><%=GetGlobalResourceObject("lang", "TotalPages")%> : <b><asp:Label ID="lblPageCount" runat="server"></asp:Label></b></li>
                            <li><%=GetGlobalResourceObject("lang", "CurrentPage")%> : <b><asp:Label ID="lblCurrentIndex" runat="server"></asp:Label></b></li>
                        </ul>
                    </div>
           
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
</div>
