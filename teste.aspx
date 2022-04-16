<%@ Page language="C#" MasterPageFile="~masterurl/default.master"
    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=15.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c"
    %>
    <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls"
        Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
        <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities"
            Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
            <%@ Import Namespace="Microsoft.SharePoint" %>
                <%@ Assembly
                    Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"
                    %>
                    <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages"
                        Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"
                        %>
                        <asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
                            <SharePoint:ListFormPageTitle runat="server"/>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
                            <span class="die">
                                <SharePoint:ListProperty Property="LinkTitle" runat="server" id="ID_LinkTitle"/>
                            </span>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
                            <img src="/_layouts/15/images/blank.gif?rev=23" width='1' height='1' alt="" />
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
                            <SharePoint:UIVersionedContent UIVersion="4" runat="server">
                                <ContentTemplate>
                                    <div style="padding-left:5px">
                                </ContentTemplate>
                            </SharePoint:UIVersionedContent>
                            <table class="ms-core-tableNoSpace" id="onetIDListForm">
                                <tr>
                                    <td>
                                        <WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main"
                                            Title="loc:Main"><ZoneTemplate><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; href=&quot;https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css&quot; integrity=&quot;sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh&quot; crossorigin=&quot;anonymous&quot;&gt;" ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." Title="Editor de Scripts" Description="Permite aos autores inserir trechos de HTML ou scripts." ChromeType="None" ExportMode="All" ID="g_348a498a_30a5_4438_ade4_556d040bafc4" __MarkupType="vsattributemarkup" __WebPartId="{348A498A-30A5-4438-ADE4-556D040BAFC4}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; href=&quot;https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css&quot; integrity=&quot;sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh&quot; crossorigin=&quot;anonymous&quot;&gt;" ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." Title="Editor de Scripts" Description="Permite aos autores inserir trechos de HTML ou scripts." ChromeType="None" ExportMode="All" ID="g_f068fefb_ef1c_4b24_8047_5b6e07ef2599" __MarkupType="vsattributemarkup" __WebPartId="{F068FEFB-EF1C-4B24-8047-5B6E07EF2599}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; href=&quot;https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css&quot; integrity=&quot;sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh&quot; crossorigin=&quot;anonymous&quot;&gt;" ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." Title="Editor de Scripts" Description="Permite aos autores inserir trechos de HTML ou scripts." ChromeType="None" ExportMode="All" ID="g_bf9e43ed_69dc_439c_aac0_c9d77999e2c1" __MarkupType="vsattributemarkup" __WebPartId="{BF9E43ED-69DC-439C-AAC0-C9D77999E2C1}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; href=&quot;https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css&quot; integrity=&quot;sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh&quot; crossorigin=&quot;anonymous&quot;&gt;" ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." Title="Editor de Scripts" Description="Permite aos autores inserir trechos de HTML ou scripts." ChromeType="None" ExportMode="All" ID="g_77eee522_9020_453c_adaf_2f06c75847b5" __MarkupType="vsattributemarkup" __WebPartId="{77EEE522-9020-453C-ADAF-2F06C75847B5}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

										</ZoneTemplate></WebPartPages:WebPartZone>
                                </td>
                                </tr>
                            </table>
                            <SharePoint:UIVersionedContent UIVersion="4" runat="server">
                                <ContentTemplate>
                                    </div>
                                </ContentTemplate>
                            </SharePoint:UIVersionedContent>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
                            <SharePoint:DelegateControl runat="server" ControlId="FormCustomRedirectControl"
                                AllowMultipleControls="true"/>
                            <SharePoint:UIVersionedContent UIVersion="4" runat="server">
                                <ContentTemplate>
                                    <SharePoint:CssRegistration Name="forms.css" runat="server" />
                                </ContentTemplate>
                            </SharePoint:UIVersionedContent>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderTitleLeftBorder" runat="server">
                            <table cellpadding="0" height="100%" width="100%" cellspacing="0">
                                <tr>
                                    <td class="ms-areaseparatorleft"><img src="/_layouts/15/images/blank.gif?rev=23"
                                            width='1' height='1' alt="" /></td>
                                </tr>
                            </table>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server">
                            <script type="text/javascript" id="onetidPageTitleAreaFrameScript">
                                if (document.getElementById("onetidPageTitleAreaFrame") != null) {
                                    document.getElementById("onetidPageTitleAreaFrame").className = "ms-areaseparator";
                                }
                            </script>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
                            <SharePoint:StyleBlock runat="server">
                                .ms-bodyareaframe {
                                padding: 8px;
                                border: none;
                                }
                            </SharePoint:StyleBlock>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderBodyLeftBorder" runat="server">
                            <div class='ms-areaseparatorleft'><img src="/_layouts/15/images/blank.gif?rev=23" width='8'
                                    height='100%' alt="" /></div>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderTitleRightMargin" runat="server">
                            <div class='ms-areaseparatorright'><img src="/_layouts/15/images/blank.gif?rev=23" width='8'
                                    height='100%' alt="" /></div>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderBodyRightMargin" runat="server">
                            <div class='ms-areaseparatorright'><img src="/_layouts/15/images/blank.gif?rev=23" width='8'
                                    height='100%' alt="" /></div>
                        </asp:Content>
                        <asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaSeparator" runat="server" />