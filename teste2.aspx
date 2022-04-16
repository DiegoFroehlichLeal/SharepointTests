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
                                            Title="loc:Main"><ZoneTemplate><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; href=&quot;https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css&quot; integrity=&quot;sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh&quot; crossorigin=&quot;anonymous&quot;&gt;" ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." Title="Editor de Scripts" Description="Permite aos autores inserir trechos de HTML ou scripts." ChromeType="None" ExportMode="All" ID="g_5a611a22_9e03_4b10_93e6_a12c88415a53" __MarkupType="vsattributemarkup" __WebPartId="{5A611A22-9E03-4B10-93E6-A12C88415A53}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; href=&quot;https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css&quot; integrity=&quot;sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh&quot; crossorigin=&quot;anonymous&quot;&gt;" ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." Title="Editor de Scripts" Description="Permite aos autores inserir trechos de HTML ou scripts." ChromeType="None" ExportMode="All" ID="g_e6321a29_822f_4370_a180_d749f8a60463" __MarkupType="vsattributemarkup" __WebPartId="{E6321A29-822F-4370-A180-D749F8A60463}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; href=&quot;https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css&quot; integrity=&quot;sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh&quot; crossorigin=&quot;anonymous&quot;&gt;" ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." Title="Editor de Scripts" Description="Permite aos autores inserir trechos de HTML ou scripts." ChromeType="None" ExportMode="All" ID="g_e2faa487_99c5_411c_b260_8976f10b8651" __MarkupType="vsattributemarkup" __WebPartId="{E2FAA487-99C5-411C-B260-8976F10B8651}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; href=&quot;https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css&quot; integrity=&quot;sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh&quot; crossorigin=&quot;anonymous&quot;&gt;" ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." Title="Editor de Scripts" Description="Permite aos autores inserir trechos de HTML ou scripts." ChromeType="None" ExportMode="All" ID="g_34410499_ccfb_437c_b2dc_c714b5706c87" __MarkupType="vsattributemarkup" __WebPartId="{34410499-CCFB-437C-B2DC-C714B5706C87}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<WebPartPages:DataFormWebPart runat="server" EnableOriginalValue="False" DisplayName="RPA_Conciliacao_de_Clientes" ViewFlag="1048584" ViewContentTypeId="" Default="FALSE" ListUrl="" ListDisplayName="" ListName="{5584B0A2-91BF-479A-8638-0C7AADD1F30B}" ListId="5584b0a2-91bf-479a-8638-0c7aadd1f30b" PageType="PAGE_DISPLAYFORM" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" NoDefaultStyle="TRUE" InitialAsyncDataFetch="False" Title="RPA_Conciliacao_de_Clientes" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="Main" PartOrder="3" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="N&#227;o &#233; poss&#237;vel importar esta Web Part." ImportErrorMessage="N&#227;o &#233; poss&#237;vel importar esta Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_ad63e2d1_6760_46d0_982d_3425ab312e20" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{AD63E2D1-6760-46D0-982D-3425AB312E20}" __AllowXSLTEditing="true" WebPart="true" Height="" Width=""><DataSources>
<SharePoint:SPDataSource runat="server" DataSourceMode="ListItem" SelectCommand="&lt;View&gt;&lt;Query&gt;&lt;Where&gt;&lt;Eq&gt;&lt;FieldRef Name=&quot;ContentType&quot;/&gt;&lt;Value Type=&quot;Text&quot;&gt;Item&lt;/Value&gt;&lt;/Eq&gt;&lt;/Where&gt;&lt;/Query&gt;&lt;/View&gt;" UseInternalName="True" UseServerDataFormat="True"><SelectParameters>
<WebPartPages:DataFormParameter ParameterKey="ListItemId" PropertyName="ParameterValues" DefaultValue="0" Name="ListItemId"></WebPartPages:DataFormParameter>
<WebPartPages:DataFormParameter ParameterKey="weburl" PropertyName="ParameterValues" DefaultValue="https://intranet.weg.net/br/informatica/OAP/templates/TreinamentoGuilherme" Name="weburl"></WebPartPages:DataFormParameter>
<WebPartPages:DataFormParameter ParameterKey="ListID" PropertyName="ParameterValues" DefaultValue="{5584B0A2-91BF-479A-8638-0C7AADD1F30B}" Name="ListID"></WebPartPages:DataFormParameter>
												</SelectParameters>
<UpdateParameters>
<WebPartPages:DataFormParameter ParameterKey="ListItemId" PropertyName="ParameterValues" DefaultValue="0" Name="ListItemId"></WebPartPages:DataFormParameter>
<WebPartPages:DataFormParameter ParameterKey="weburl" PropertyName="ParameterValues" DefaultValue="https://intranet.weg.net/br/informatica/OAP/templates/TreinamentoGuilherme" Name="weburl"></WebPartPages:DataFormParameter>
<WebPartPages:DataFormParameter ParameterKey="ListID" PropertyName="ParameterValues" DefaultValue="{5584B0A2-91BF-479A-8638-0C7AADD1F30B}" Name="ListID"></WebPartPages:DataFormParameter>
												</UpdateParameters>
<InsertParameters>
<WebPartPages:DataFormParameter ParameterKey="ListItemId" PropertyName="ParameterValues" DefaultValue="0" Name="ListItemId"></WebPartPages:DataFormParameter>
<WebPartPages:DataFormParameter ParameterKey="weburl" PropertyName="ParameterValues" DefaultValue="https://intranet.weg.net/br/informatica/OAP/templates/TreinamentoGuilherme" Name="weburl"></WebPartPages:DataFormParameter>
<WebPartPages:DataFormParameter ParameterKey="ListID" PropertyName="ParameterValues" DefaultValue="{5584B0A2-91BF-479A-8638-0C7AADD1F30B}" Name="ListID"></WebPartPages:DataFormParameter>
												</InsertParameters>
<DeleteParameters>
<WebPartPages:DataFormParameter ParameterKey="ListItemId" PropertyName="ParameterValues" DefaultValue="0" Name="ListItemId"></WebPartPages:DataFormParameter>
<WebPartPages:DataFormParameter ParameterKey="weburl" PropertyName="ParameterValues" DefaultValue="https://intranet.weg.net/br/informatica/OAP/templates/TreinamentoGuilherme" Name="weburl"></WebPartPages:DataFormParameter>
<WebPartPages:DataFormParameter ParameterKey="ListID" PropertyName="ParameterValues" DefaultValue="{5584B0A2-91BF-479A-8638-0C7AADD1F30B}" Name="ListID"></WebPartPages:DataFormParameter>
												</DeleteParameters>
</SharePoint:SPDataSource>
</DataSources>
<Xsl>





<xsl:stylesheet xmlns:x="http://www.w3.org/2001/XMLSchema" xmlns:dsp="http://schemas.microsoft.com/sharepoint/dsp" version="1.0" exclude-result-prefixes="xsl msxsl ddwrt" xmlns:ddwrt="http://schemas.microsoft.com/WebParts/v2/DataView/runtime" xmlns:asp="http://schemas.microsoft.com/ASPNET/20" xmlns:__designer="http://schemas.microsoft.com/WebParts/v2/DataView/designer" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:SharePoint="Microsoft.SharePoint.WebControls">
	<xsl:output method="html" indent="no"/>
	<xsl:decimal-format NaN=""/>
		<xsl:param name="dvt_apos">'</xsl:param>
		<xsl:param name="ManualRefresh"></xsl:param>
		<xsl:variable name="dvt_1_automode">0</xsl:variable>
		<xsl:template match="/">
			<xsl:choose>
				<xsl:when test="($ManualRefresh = 'True')">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td valign="top">
							<xsl:call-template name="dvt_1"/>
						</td>
						<td width="1%" class="ms-vb" valign="top">
							<img src="/_layouts/15/images/staticrefresh.gif" id="ManualRefresh" border="0" onclick="javascript: {ddwrt:GenFireServerEvent('__cancel')}" alt="Click here to refresh the dataview."/>
						</td>
					</tr>
				</table>
			</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="dvt_1"/>
			</xsl:otherwise>
			</xsl:choose>
	</xsl:template>
		<xsl:template name="dvt_1">
			<xsl:variable name="dvt_StyleName">ListForm</xsl:variable>
			<xsl:variable name="Rows" select="/dsQueryResponse/Rows/Row"/>
			<xsl:variable name="dvt_RowCount" select="count($Rows)"/>
			<xsl:variable name="dvt_IsEmpty" select="$dvt_RowCount = 0"/>
			<xsl:choose>
				<xsl:when test="$dvt_IsEmpty">
					<xsl:call-template name="dvt_1.empty"/>
			</xsl:when>
				<xsl:otherwise>
				<table border="0" width="100%">
					<xsl:call-template name="dvt_1.body">
						<xsl:with-param name="Rows" select="$Rows"/>
					</xsl:call-template>
				</table>
			</xsl:otherwise>
			</xsl:choose>
	</xsl:template>
		<xsl:template name="dvt_1.body">
			<xsl:param name="Rows"/>
		<!--<tr>
			<td class="ms-toolbar" nowrap="nowrap">
				<table>
					<tr>
						<td width="99%" class="ms-toolbar" nowrap="nowrap"><IMG SRC="/_layouts/15/images/blank.gif" width="1" height="18"/></td>
					</tr>
				</table>
			</td>
		</tr>-->
		<tr>
			<td class="ms-toolbar" nowrap="nowrap">
				<SharePoint:FormToolBar runat="server" ControlMode="Display"/>
				<SharePoint:ItemValidationFailedMessage runat="server" ControlMode="Display"/>
			</td>
		</tr>
			<xsl:for-each select="$Rows">
				<xsl:call-template name="dvt_1.rowview"/>
		</xsl:for-each>
<!--		<tr>
			<td class="ms-toolbar" nowrap="nowrap">
				<table>
					<tr>
						<td width="99%" class="ms-toolbar" nowrap="nowrap"><IMG SRC="/_layouts/15/images/blank.gif" width="1" height="18"/></td>
					</tr>
				</table>
			</td>
		</tr>-->
	</xsl:template>
		<xsl:template name="dvt_1.rowview">
		<div class="container">
		<tr>
			<td>
				<table border="0" cellspacing="0" width="80%" cellpadding="0" style="font-size: 12px; border-collapse: collapse; margin-bottom:0">
				<tr style="border-bottom: 1px black solid">
						<td width="190px" valign="top" class="ms-formlabel" style="padding:0; height:24px; margin-bottom:0px" color="black">
							
							<font color="black"> <p style="font-family:Calibri"><b><nobr>Company</nobr></b></p></font></td>
							
							<td><p style="font-family:Calibri; margin-bottom:0px"><nobr></nobr><xsl:value-of select="@Empresa"/></p></td>
							<td width="190px" valign="top" class="ms-formlabel" style="padding:0; height:24px; margin-bottom:0px" color="black" align="right">
							
							<font color="black"> <p style="font-family:Calibri"><nobr><b>Date: </b><xsl:value-of select="@Mes"/>/<xsl:value-of select="@Ano"/></nobr></p></font></td>
					</tr>

					<tr>
						<td width="190px" class="ms-formlabel" color="black">
							
							<font color="black"> <p style="font-family:Calibri; margin-bottom:0px"><b><nobr>Ledger account:</nobr></b></p></font></td>
							
							<td><p style="font-family:Calibri; margin-bottom:0px"><nobr></nobr><xsl:value-of select="@Title"/></p></td>
							<td></td>
					</tr>
					<tr style="border-bottom: 1px black solid">
						<td width="190px" class="ms-formlabel" color="black">
							
							<font color="black"> <p style="font-family:Calibri; margin-bottom:0px"><b><nobr>Account name: </nobr></b></p></font></td>
							
							<td><p style="font-family:Calibri; margin-bottom:0px"><nobr></nobr><xsl:value-of select="@Nome_Conta"/></p></td>
							<td></td>
					</tr>					
					<tr>
						<td colspan="2" width="190px" class="ms-formlabel">
						<font color="black"> <p style="font-family:Calibri; margin-bottom:0px"><nobr>Accounting account balance </nobr></p></font>
							
						</td>
						<td width="190px" class="ms-formbody" align="left">
							<p style="font-family:Calibri; margin-bottom:0px"><xsl:value-of select="@Saldo_Conta_Contabil"/></p>
						</td>
					</tr>
					<tr style="border-bottom:1px black solid;">
						<td colspan="2" width="190px" valign="top" class="ms-formlabel">
								<font color="black"> <p style="font-family:Calibri; margin-bottom:0px"><nobr>Customer report balance</nobr></p></font>
						</td>
						<td width="190px" valign="top" class="ms-formbody" align="left">
							<p style="font-family:Calibri; margin-bottom:0px"><xsl:value-of select="@Saldo_Relatorio_Clientes"/></p>
						</td>
					</tr>
					
	                 <tr>
						<td colspan="2" width="190px" class="ms-formlabel">
								<font color="black"> <p style="font-family:Calibri; margin-bottom:0px"><b><nobr>Difference </nobr></b></p></font>
						</td>
						<td width="190px" class="ms-formbody" align="left">
							<p style="font-family:Calibri; margin-bottom:0px"><xsl:value-of select="@Diferenca"/></p>
						</td>
					</tr>
					<div class="col-md-12">
					<tr>
						<td width="190px" valign="top" class="ms-formlabel" style="padding:0; height:24px">
								<font color="black"> <p style="font-family:Calibri"><nobr>Justification (If different from &lt;&gt; 0)</nobr></p></font>
						</td>
					</tr>
					<tr>
						<td colspan="3" valign="top" class="ms-formbody" style="padding:0; height:24px">
							<textarea style="width: 100%; overflow:auto; border: 1px black solid;" id="justificativa" rows="10" readonly="readonly">
								<xsl:value-of select="@Justificativa"/>
							</textarea>
						</td>
					</tr>
					</div>
					
					<tr><td colspan="3"><nobr> </nobr></td></tr>
					
					<tr><td colspan="4"></td></tr>
					
					<tr width="190px" valign="top" class="ms-formlabel">

						<td colspan="3" style=" border-top: 1px black dotted">
							<nobr><p style="font-family:Calibri; color:black"><b>Approvals:</b></p></nobr>
						</td>
						</tr>
						
						<tr>						
						     <td width="190px" valign="top" class="ms-formlabel" style="padding:0">
								<nobr>Head of Overseas Accounting: </nobr>
						    </td>
							<td width="190px" valign="top" class="ms-formbody" style="padding:0; height:24px" align="left">
								<xsl:value-of select="@Aprovado_Pelo_x0028_a_x0029__Che0"/>						    
							</td>
						</tr>
						
						<tr>
						<td width="190px" valign="top" class="ms-formlabel" colspan="2" style="color:gray">
								<nobr>Status assigned by:   </nobr> <xsl:value-of select="@Aprovador_Contabilidade_Brasil"/>
						</td>
						</tr>
					
					<tr>
						<td width="190px" valign="top" class="ms-formlabel" colspan="2" style="color:gray">
								<nobr>Date and time: </nobr> <xsl:value-of select="@DataHora_Apr_Cont_BR"/>
						</td>
					</tr>

					
					<tr id="idAttachmentsRow">
						<td nowrap="true" valign="top" class="ms-formlabel" style="padding:0; height:24px" width="20%">
							<SharePoint:FieldLabel ControlMode="Display" FieldName="Attachments" runat="server"/>
						</td>
						<td valign="top" class="ms-formbody" style="padding:0; height:24px" width="80%">
							<SharePoint:FormField runat="server" id="AttachmentsField" ControlMode="Display" FieldName="Attachments" __designer:bind="{ddwrt:DataBind('u','AttachmentsField','Value','ValueChanged','ID',ddwrt:EscapeDelims(string(@ID)),'@Attachments')}"/>
							<script>
          var elm = document.getElementById("idAttachmentsTable");
          if (elm == null || elm.rows.length == 0)
          document.getElementById("idAttachmentsRow").style.display='none';
        </script>
						</td>
					</tr>
					<xsl:if test="$dvt_1_automode = '1'" ddwrt:cf_ignore="1">
						<tr>
							<td colspan="99" class="ms-vb">
								<span ddwrt:amkeyfield="ID" ddwrt:amkeyvalue="ddwrt:EscapeDelims(string(@ID))" ddwrt:ammode="view"></span>
							</td>
						</tr>
					</xsl:if>
				</table>
			</td>
		</tr>
		</div>
		<script type="text/javascript" src=""></script>

		<script type="text/javascript">
			$('#approveChefeCont').text($('#approveChefeNumberCont').text() == '0' ? 'Rejected' : 'Approved');
			$('#approveChefeTes').text($('#approveChefeNumberTes').text() == '0' ? 'Rejected' : 'Approved');

			setTimeout(function(){
				$('#contentRow').removeAttr('style');
			}, 50);
			var quantityRows = $('#justificación').val().length / 1200;
			if (quantityRows != 0) {
				$('#justificación').attr('rows', quantityRows);
			} else {
				$('#justificación').attr('rows', '2');
			}

		</script>

	</xsl:template>
		<xsl:template name="dvt_1.empty">
			<xsl:variable name="dvt_ViewEmptyText">No hay elementos para mostrar en esta vista..</xsl:variable>
		<table border="0" width="100%">
			<tr>
				<td class="ms-vb">
					<xsl:value-of select="$dvt_ViewEmptyText"/>
				</td>
			</tr>
		</table>
	</xsl:template>
</xsl:stylesheet></Xsl>
<DataFields>
</DataFields>
<ParameterBindings>





<ParameterBinding Name="ListItemId" Location="QueryString(ID)" DefaultValue="0" /><ParameterBinding Name="weburl" Location="None" DefaultValue="https://intranet.weg.net/br/corporativo/controladoria/rtr/overseas_accounting/customers_reconciliation" /><ParameterBinding Name="ListID" Location="None" DefaultValue="{5584B0A2-91BF-479A-8638-0C7AADD1F30B}" /><ParameterBinding Name="dvt_apos" Location="Postback;Connection" /><ParameterBinding Name="ManualRefresh" Location="WPProperty[ManualRefresh]" /><ParameterBinding Name="UserID" Location="CAMLVariable" DefaultValue="CurrentUserName" /><ParameterBinding Name="Today" Location="CAMLVariable" DefaultValue="CurrentDate" /></ParameterBindings>
</WebPartPages:DataFormWebPart>

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