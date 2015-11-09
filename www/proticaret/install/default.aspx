<%@ Page Language="vb" ValidateRequest="false" AutoEventWireup="false" Inherits="ASPNetPortal.installPage" SmartNavigation="False" CodeBehind="default.aspx.vb" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="head1" runat="server">
    <title><%=GetGlobalResourceObject("admin", "InstallTitle")%></title>
</head>
<body>
    <div align="center">
        <form id="Form1" method="post" runat="server">
            <div class="pagePopup pageInstall">
                <div class="boxToggle">
                    <div class="toggleTitle">
                        <div class="titleText"><%# GetGlobalResourceObject("admin", "InstallTitle")%></div>
                    </div>
                    <div class="toggleContent">
                        <asp:Image ID="imgHeader" runat="server" ImageUrl="/install/images/step1.png" />

                        <asp:Panel runat="server" ID="pnlWizard">
                            <asp:Wizard ID="wzdInstaller" runat="server" DisplaySideBar="False" OnActiveStepChanged="wzdInstaller_OnActiveStepChanged" OnNextButtonClick="wzdInstaller_OnNextButtonClick" ActiveStepIndex="0">
                                <StepNavigationTemplate>
                                    <div class="buttonGroup">
                                        <asp:Button ID="btnStepPrev" runat="server" CommandName="MovePrevious" CssClass="btnDefault" Text="<%$ Resources:admin, Back%>" />
                                        <asp:Button ID="btnStepNext" runat="server" CommandName="MoveNext" CssClass="btnDefault" Text="<%$ Resources:admin, Forward%>" />
                                    </div>
                                </StepNavigationTemplate>

                                <StartNavigationTemplate>
                                    <asp:Button ID="btnStepNext" runat="server" CommandName="MoveNext" CssClass="btnDefault" Text="<%$ Resources:admin, Forward%>" />
                                </StartNavigationTemplate>

                                <WizardSteps>
                                    <asp:WizardStep ID="stpWelcome" runat="server">
                                        <p><%=GetGlobalResourceObject("admin", "InstallMsg1")%></p>

                                        <div class="radioList">
                                            <ul>
                                                <li>
                                                    <label>
                                                        <asp:RadioButton ID="rbInstall" runat="server" AutoPostBack="True" GroupName="InstallUpgrade" Checked="True"></asp:RadioButton>
                                                        <%=GetGlobalResourceObject("admin", "InstallNew")%>
                                                    </label>
                                                </li>
                                                <li>
                                                    <label>
                                                        <asp:RadioButton ID="rbUpgrade" runat="server" GroupName="InstallUpgrade"></asp:RadioButton>
                                                        <%=GetGlobalResourceObject("admin", "Upgrade")%>
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>

                                        <p><%=GetGlobalResourceObject("admin", "InstallMsg2")%></p>
                                    </asp:WizardStep>

                                    <asp:WizardStep ID="stpUserServer" runat="server">
                                        <p><b><%=GetGlobalResourceObject("admin", "SqlServerInfo")%></b></p>
                                        <div class="dataForm">
                                            <div class="row">
                                                <div class="colOne">
                                                    <label><%=GetGlobalResourceObject("admin", "SqlServerName")%> :</label>
                                                    <asp:TextBox ID="txtServerName" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="colTwo">
                                                    <label><%=GetGlobalResourceObject("admin", "SqlServerUser")%> :</label>
                                                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                                </div>
                                                <div class="colTwo">
                                                    <label><%=GetGlobalResourceObject("admin", "SqlServerPassword")%> :</label>
                                                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:WizardStep>

                                    <asp:WizardStep ID="stpDatabase" runat="server">
                                        <p><b><%=GetGlobalResourceObject("admin", "DatabaseInfo")%></b></p>
                                        <div class="dataForm">
                                            <div class="row">
                                                <div class="colOne">
                                                    <label>
                                                        <asp:RadioButton ID="rbCreateNew" runat="server" CssClass="fLeft" AutoPostBack="True" GroupName="DatabaseType" Checked="True"></asp:RadioButton>&nbsp;<%=GetGlobalResourceObject("admin", "CreateNewDatabase")%></label></div>
                                            </div>
                                            <div class="row">
                                                <div class="colOne">
                                                    <label><%=GetGlobalResourceObject("admin", "DatabaseName")%> :</label>
                                                    <asp:TextBox ID="txtNewDatabaseName" runat="server" Enabled="False"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="colOne">
                                                    <label>
                                                        <asp:RadioButton ID="rbUseExisting" runat="server" CssClass="fLeft" AutoPostBack="True" GroupName="DatabaseType"></asp:RadioButton>&nbsp;<%=GetGlobalResourceObject("admin", "UseEmptyDatabase")%></label></div>
                                            </div>
                                            <div class="row">
                                                <div class="colTwo">
                                                    <label><%=GetGlobalResourceObject("admin", "EmptyDatabaseName")%></label>
                                                    <asp:TextBox ID="txtExistingDatabaseName" runat="server"></asp:TextBox>
                                                    <asp:CheckBox ID="chkDontCheckDatabase" runat="server" Visible="false"></asp:CheckBox>
                                                    <%--<%=GetGlobalResourceObject("admin", "DontCheckDatabase")%>--%>
                                                </div>
                                                <div class="colTwo">
                                                    <label>
                                                        <asp:Label ID="lblTheme" runat="server"><%=GetGlobalResourceObject("admin", "InstallTheme")%> : </asp:Label></label>
                                                    <asp:DropDownList ID="ddlTheme" runat="server"></asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="colOne">
                                                    <asp:Panel ID="pnlLog" runat="server" Visible="False" Width="100%">
                                                        <label><%=GetGlobalResourceObject("admin", "SetupLog")%></label>
                                                        <asp:Panel runat="server" ID="pnlGroupLog">
                                                            <asp:TextBox ID="txtLog" runat="server" TextMode="MultiLine" ReadOnly="True" />
                                                        </asp:Panel>
                                                    </asp:Panel>
                                                </div>
                                            </div>
                                        </div>
                                    </asp:WizardStep>

                                    <asp:WizardStep ID="stpConnectionString" runat="server" AllowReturn="false" StepType="Start">
                                        <asp:Panel ID="pnlConnectionString" runat="server">
                                            <p>
                                                <asp:Label ID="lblErrorConnMessage" runat="server"></asp:Label>
                                            </p>
                                        </asp:Panel>
                                    </asp:WizardStep>

                                    <asp:WizardStep ID="stpFinish" runat="server" StepType="Complete">
                                        <asp:Panel ID="pnlFinished" runat="server">
                                            <p><b><%=GetGlobalResourceObject("admin", "InstallCompleted")%></b></p>
                                            <div runat="server" id="pnlChangeAdminCredentials">
                                                <p><%=GetGlobalResourceObject("admin", "InstallMsg3")%></p>
                                            </div>
                                            <div class="dataForm">
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "Email")%> :</label>
                                                        <asp:TextBox runat="server" ID="txtAdminEmail" Text="admin@siteniz.com" />
                                                    </div>
                                                    <div class="colTwo">
                                                        <label>
                                                            <%=GetGlobalResourceObject("admin", "Password")%> :
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdminPassword" ErrorMessage="*" ValidationGroup="ChangeAdmin" /></label>
                                                        <asp:TextBox runat="server" ID="txtAdminPassword" Text="pwd" />
                                                        <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server"
                                                            HelpStatusLabelID="strength"
                                                            MinimumNumericCharacters="1"
                                                            MinimumSymbolCharacters="1"
                                                            MinimumUpperCaseCharacters="1"
                                                            MinimumLowerCaseCharacters="1"
                                                            DisplayPosition="RightSide"
                                                            PreferredPasswordLength="8"
                                                            RequiresUpperAndLowerCaseCharacters="True"
                                                            StrengthIndicatorType="Text"
                                                            TargetControlID="txtAdminPassword"
                                                            PrefixText="Şifre Gücü : "
                                                            TextStrengthDescriptions="Çok zayıf;Zayıf;Orta;Güçlü;Çok güçlü">
                                                        </ajaxToolkit:PasswordStrength>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "SiteName")%> :</label>
                                                        <asp:TextBox ID="txtSiteName" runat="server" Text="siteniz.com"></asp:TextBox>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "CompanyName")%> :</label>
                                                        <asp:TextBox ID="txtCompanyName" runat="server" Text="Firma Adınız"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "Phone")%> :</label>
                                                        <asp:TextBox ID="txtCompanyPhone" runat="server" Text="0212 444 44 44"></asp:TextBox>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "Fax")%> :</label>
                                                        <asp:TextBox ID="txtCompanyFax" runat="server" Text="0212 444 44 45"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "CompanyEmail")%> :</label>
                                                        <asp:TextBox ID="txtCompanyMail" runat="server" Text="info@siteniz.com"></asp:TextBox>
                                                    </div>
                                                    <div class="colTwo">
                                                        <label><%=GetGlobalResourceObject("admin", "CompanyAddress")%> :</label>
                                                        <asp:TextBox ID="txtCompanyAddress" runat="server" Text="Firma Adresiniz" TextMode="MultiLine"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="colOne">
                                                        <asp:Button ID="btnSaveAdmin" runat="server" CssClass="btnDefault" OnClick="btnSaveAdmin_OnClick" Text="<%$ Resources:admin, Save%>" ValidationGroup="ChangeAdmin" />
                                                        <asp:Label runat="server" ID="lblSaveAdminResult" Visible="false"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                            <p><%=GetGlobalResourceObject("admin", "InstallMsg4")%></p>
                                            <p>
                                                <asp:LinkButton ID="btnWebSite" CssClass="btnDefault" runat="server" OnClick="btnGoToSite_Click" Text="<%$ Resources:admin, GoToSite%>"> </asp:LinkButton>
                                            </p>
                                            <p><%=GetGlobalResourceObject("admin", "InstallMsg5")%></p>
                                        </asp:Panel>
                                    </asp:WizardStep>
                                </WizardSteps>
                            </asp:Wizard>
                        </asp:Panel>
                        <asp:Panel ID="pnlPermission" runat="server" Visible="false">
                            <p>
                                <asp:Label ID="lblPermission" runat="server" />
                            </p>
                        </asp:Panel>
                        <asp:Panel ID="pnlButtons" runat="server" Visible="false">
                            <div class="buttonGroup">
                                <asp:Button ID="btnPermissionTest" runat="server" CssClass="btnDefault" OnClick="btnPermissionTest_Click" Text="<%$ Resources:admin, TestAgain%>" />
                                <a target="_blank" class="btnDefault" href="http://www.proticaret.org/eticaret-dokumanlar.aspx"><%=GetGlobalResourceObject("admin", "InstallDocument")%></a>
                                <asp:Button ID="btnPermissionSkip" Visible="false" runat="server" CssClass="btnDefault" OnClick="btnPermissionSkip_Click" Text="<%$ Resources:admin, SkipTest%>" />
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="pnlPermissionSuccess" runat="server" Visible="false">
                            <p>
                                <asp:Label ID="lblPermissionSuccess" runat="server" />
                            </p>
                            <asp:Button ID="btnPermissionContinue" CssClass="btnDefault" runat="server" OnClick="btnPermissionContinue_Click" Text="<%$ Resources:admin, ContinueCheck%>" />
                        </asp:Panel>
                        <asp:Panel ID="pnlError" runat="server">
                            <p>
                                <asp:Label ID="lblError" runat="server"></asp:Label>
                            </p>
                        </asp:Panel>

                        <div align="right">
                            <asp:Label ID="lblVersion" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
                jQuery(document).ready(function () {
                    jQuery(window).bind("load", function () {
                        var frameWidth = jQuery(document).width();
                        var frameHeight = jQuery(document).height()
                        parent.$.fn.colorbox.myResize(frameWidth, frameHeight);
                    });
                });
            </script>
        </form>
    </div>
</body>
</html>
