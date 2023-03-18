<%@ Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=" %>
	<%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage"
		MasterPageFile="~masterurl/default.master" MainContentID="PlaceHolderMain" %>
		<%@ Import Namespace="Microsoft.SharePoint.WebPartPages" %>
			<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls"
				Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=" %>
				<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities"
					Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken="
					%>
					<%@ Import Namespace="Microsoft.SharePoint" %>
						<%@ Assembly
							Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken="
							%>
							<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages"
								Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken="
								%>
								<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
									<SharePoint:ProjectProperty Property="Title" runat="server" /> -
									<SharePoint:ListItemProperty runat="server" />
								</asp:Content>
								<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
									<SharePoint:AlphaImage ID=onetidtpweb1 Src="/_layouts/15/images/wiki.png?rev=23"
										Width=145 Height=54 Alt="" Runat="server" />
								</asp:Content>
								<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
									<meta name="CollaborationServer" content="SharePoint Team Web Site" />
									<SharePoint:ScriptBlock runat="server">
										var navBarHelpOverrideKey = "WSSEndUser";
									</SharePoint:ScriptBlock>
									<!-- imports here -->
									
									<script type="text/javascript" src="../SiteAssets/js/ocr_view.js"></script>

									<script type="text/javascript">
										$(document).ready(function () {
											GetCurrentSiteUrl();
											LoadForm(formID);
										
											new ClipboardJS('#alinkFiles');

										});


									</script>

									<SharePoint:RssLink runat="server" />
								</asp:Content>
								<asp:Content ContentPlaceHolderId="PlaceHolderMiniConsole" runat="server">
									<SharePoint:FormComponent TemplateName="WikiMiniConsole" ControlMode="Display"
										runat="server" id="WikiMiniConsole" />
								</asp:Content>
								<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server">
									<SharePoint:RecentChangesMenu runat="server" id="RecentChanges" />

								</asp:Content>
								<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
									<div>
										<div class="row">
											<div class="col-md-6 mb-3">
												<label for="valorTotal">Valor</label>
												<input type="text" name="valorTotal" class="form-control money" id="valorTotal" readonly>

											</div>
											<div class="col-md-6 mb-3">
												<label for="processo">Processo</label>
												<input type="text" name="processo" class="form-control" id="processo" readonly>

											</div>
										</div>
									</div>
									<div class="accordion" id="accordionExample">
										<div id="form"></div>
									</div>


								</asp:Content>
