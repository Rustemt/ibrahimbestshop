<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="addnew.ascx.vb" Inherits=".addnew" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>
<div class="pageAddLicences">
    <div class="alert alert-info" id="alert" runat="server" visible="false" >
        <asp:Label ID="lblErr" runat="server"></asp:Label>
    </div> 
    <div class="dataForm">
        <div class="row">
            <div class="col1-2">
                <div class="row">
                    <div class="colOne">
                    	<div class="btnGroup">
                        <asp:Button CssClass="btnDefault" Text="<%$ Resources:admin,LicensesUpdate %>" ID="btnlicance" runat="server" />
                        <asp:Button CssClass="btnDefault" Text="Bildirimleri Çek" ID="btnbildirim" runat="server" />
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="dataTable">
                        <asp:DataGrid ID="Datagrid1" runat="server" GridLines="None" PageSize="20" AllowPaging="True" AutoGenerateColumns="False" AllowSorting="True" HeaderStyle-CssClass="title" FooterStyle-HorizontalAlign="Center" ShowFooter="True">
                            <Columns>
                                <asp:BoundColumn DataField="LicanceName" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,LicenceName %>" SortExpression="LicanceName"></asp:BoundColumn>
                                <asp:BoundColumn DataField="StartDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,StartDate %>" SortExpression="StartDate"></asp:BoundColumn>
                                <asp:BoundColumn DataField="EndDate" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" DataFormatString="{0:d}" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,EndDate %>" SortExpression="EndDate"></asp:BoundColumn>
                                <asp:BoundColumn DataField="IsActive" HeaderStyle-Wrap="false" HeaderText="<%$ Resources:admin,StatusActiveOrPassive %>" SortExpression="IsActive"></asp:BoundColumn>
                            </Columns>
                            <PagerStyle PageButtonCount="20" Mode="NumericPages" CssClass="dataPager"></PagerStyle>
                        </asp:DataGrid>
                    </div>

                </div>
                <asp:ModalUpdateProgress ID="mup" runat="server" DisplayAfter="0">
                    <ProgressTemplate>
                        <div class="modalPopup">
                            <p><%=GetGlobalResourceObject("lang", "Loading")%><img alt="Yükleniyor" src="<% =getThemePath() %>/images/loading.gif" align="middle" /></p>
                            <p><%=GetGlobalResourceObject("lang", "PleaseWait")%></p>
                        </div>
                    </ProgressTemplate>
                </asp:ModalUpdateProgress>

            </div>
        </div>
    </div>
</div>

