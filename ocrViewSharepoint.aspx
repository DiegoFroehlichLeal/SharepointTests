<%@ Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
	<%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage"
		MasterPageFile="~masterurl/default.master" MainContentID="PlaceHolderMain" %>
		<%@ Import Namespace="Microsoft.SharePoint.WebPartPages" %>
			<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls"
				Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
				<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities"
					Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"
					%>
					<%@ Import Namespace="Microsoft.SharePoint" %>
						<%@ Assembly
							Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"
							%>
							<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages"
								Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"
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
									<!-- Font Awesome -->
									<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
									<!-- <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"/> -->
									<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/bootstrap4.0.min.css"/>
									<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/jquery-ui.min.css"/>
									<!-- <link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/font-awesome.min.css" /> -->
									<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/MDB5-STANDARD-UI-KIT-Free-3.10.2/css/mdb.min.css"/>
									<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/ju/jq-3.6.0/dt-1.11.3/datatables.min.css" />
									<!-- <link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/layout3.0.css" /> -->
									<!-- <link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/bird-alert.css"> -->
									<!-- <link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/MDB-Free/css/mdb.min.css"> -->
									<!-- <link rel="stylesheet" type="text/css" href="https://unpkg.com/tabulator-tables/dist/css/tabulator.min.css"> -->
									<link rel="stylesheet" type="text/css" href="../SiteAssets/css/ocr_view.css" />
									
									<script type="text/javascript" src="https://unpkg.com/tabulator-tables/dist/js/tabulator.min.js"></script>
									<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
									<!-- <script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/jquery-3.2.1.slim.min.js.js"></script> -->
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/popper.min.js"></script>
									<!-- <script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/tooltip.min.js"></script> -->
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/jquery.min.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/jquery-ui.min.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bootstrap4.0.min.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/clipboard.min.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/DataTables-1.10.18/js/dataTables.colReorder.min.js"></script>
									<!-- <script type="text/javascript" src="https://cdn.datatables.net/v/ju/jq-3.6.0/dt-1.11.3/datatables.min.js"></script> -->
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/WEGTools.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/mask.js"></script>
									<!-- <script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/weg-headerBar.js"></script> -->
									<!-- <script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bootbox.min.js"></script> -->
									<!-- <script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bootstrap-filestyle.min.js"></script> -->
									<!-- <script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bird-alert.min.js"></script> -->
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/moment.min.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/momentjs-business.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/require.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/loader.js"></script>
									<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/MDB5-STANDARD-UI-KIT-Free-3.10.2/js/mdb.min.js"></script>
									<!-- <script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bootstrap-filestyle.min.js"></script> -->
									<!-- <script type="text/javascript" src="https://cdn.syncfusion.com/ej2/dist/ej2.min.js"></script> -->
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