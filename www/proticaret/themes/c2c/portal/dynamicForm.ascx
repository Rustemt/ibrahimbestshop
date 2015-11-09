<%@ Control Language="vb" Inherits="ASPNetPortal.dynamicForm1" AutoEventWireup="false" CodeBehind="dynamicForm.ascx.vb" %>
<%@ Register TagPrefix="aspzone" Namespace="aspZone.WebControls" Assembly="aspZone.WebControls.OneClickButton" %>
<%@ Register Assembly="skmValidators" Namespace="skmValidators" TagPrefix="skm" %>
<div id="dynamicform" class="module">
    <% If HeaderVisible Then%>
    <div class="moduleTitle">
        <%=ModuleTitle%>
        <% If IsEditable Then%>
        <a href="<%=EditNavigateUrl %>" class="moduleTitleEdit"><%=EditText %></a>
        <% End If%>
    </div>
    <% End If%>
    <div class="moduleContent moduleContentCol1">
        <div id="formdiv" runat="server">
            <asp:Repeater ID="rptQuestions" runat="server" OnItemDataBound="rptQuestions_ItemDataBound">
                <ItemTemplate>
                    <div class="moduleCol1">
                        <label>
                            <asp:Label ID="lblQuestion" runat="server"></asp:Label></label></div>
                    <div class="moduleCol1">
                        <asp:Label ID="lblQuestionId" runat="server" Visible="false" Text="0"></asp:Label>
                        <asp:TextBox ID="tbQuestion" runat="Server"></asp:TextBox>
                        <asp:TextBox ID="tbQuestion1" runat="Server" TextMode="MultiLine"></asp:TextBox>
                        <asp:CheckBox ID="cbQuestion" runat="server" />
                        <asp:CheckBoxList ID="cblQuestion" runat="server"></asp:CheckBoxList>
                        <asp:DropDownList ID="ddlMail" runat="Server"></asp:DropDownList>
                        <asp:DropDownList ID="ddlQuestion" runat="Server"></asp:DropDownList>
                        <asp:RadioButtonList CssClass="datalist" ID="rblQuestion" runat="Server"></asp:RadioButtonList>
                        <input id="oFile" type="file" size="20" name="oFile" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvForQuestion" runat="Server" ControlToValidate="tbQuestion" ErrorMessage="Zorunlu Alan">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvForQuestion" runat="ServeR" ValueToCompare="0" ControlToValidate="ddlQuestion" Operator="NotEqual" ErrorMessage="Zorunlu Alan">*</asp:CompareValidator>
                        <skm:CheckBoxValidator runat="server" ID="cbvForQuestion" ControlToValidate="cbQuestion" ErrorMessage='Zorunlu Alan' MustBeChecked="True">*</skm:CheckBoxValidator>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
            <label><%=GetGlobalResourceObject("lang", "Captha")%></label>
            <label>
                <img runat="server" id="imgCaptha" src="/services/captha.aspx" border="0" alt="" width="132" height="30" />
            </label>
            <label>
                <asp:TextBox ID="txtCaptha" runat="server"></asp:TextBox>
            </label>
        </div>
        <div id="alert" runat="server" class="alert"><%=GetGlobalResourceObject("lang", "CapthaError")%></div>
        <div id="info" runat="server" class="information"><%=GetGlobalResourceObject("lang", "SubmitedSuccess")%></div>
        <label>
            <aspzone:OneClickButton ID="btnSend" CssClass="button" runat="server" Text="<%$ Resources:lang, Send%>" WaitText="<%$ Resources:lang, Sending%>"></aspzone:OneClickButton></label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
    </div>
</div>

<% =goglecode%>
