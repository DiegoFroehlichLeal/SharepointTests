<%@ Assembly Name="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage" MasterPageFile="~masterurl/default.master"      MainContentID="PlaceHolderMain" %>
<%@ Import Namespace="Microsoft.SharePoint.WebPartPages" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:ProjectProperty Property="Title" runat="server" /> - Serviços
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
	<SharePoint:AlphaImage ID=onetidtpweb1 Src="/_layouts/15/images/wiki.png?rev=23" Width=145 Height=54 Alt="" Runat="server"
	/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<meta name="CollaborationServer" content="SharePoint Team Web Site" />
	<SharePoint:ScriptBlock runat="server">
		var navBarHelpOverrideKey = "WSSEndUser";
	</SharePoint:ScriptBlock>

	<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/jquery-ui.min.css"/>
	<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/bootstrap4.0.min.css"/>
	<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/layout3.0.css"/>
	<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/bird-alert.css">
	<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/MDB-Free/css/mdb.min.css">
	<link rel="stylesheet" type="text/css" href="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/css/datatables.min.css">
	<link rel="stylesheet" type="text/css" href="../SiteAssets/css/allRequests.css"/>

	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/jquery-3.2.1.slim.min.js.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/jquery.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/popper.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bootstrap4.0.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/weg-tools.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/mask.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/weg-headerBar.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bootbox.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bootstrap-filestyle.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/bird-alert.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/moment.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/momentjs-business.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/datatables.min.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/require.js"></script>
	<script type="text/javascript" src="https://intranet.weg.net/br/SiteAssets/js/vendor/schererr/js/loader.js"></script>
	<script type="text/javascript" src="../SiteAssets/js/allRequests.js"></script>

	<script type="text/javascript">
		$(document).ready(function () {
			GetCurrentSiteUrl();
			//LoadRequests('Aguardando Instrução');
			LoadRequests("FAZER FATURA");
		});
	</script>

	<SharePoint:RssLink runat="server" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMiniConsole" runat="server">
	<SharePoint:FormComponent TemplateName="WikiMiniConsole" ControlMode="Display" runat="server" id="WikiMiniConsole" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server">
	<SharePoint:RecentChangesMenu runat="server" id="RecentChanges" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<div id="mainDiv" class="col-md-12 order-md-1 mb-3">
		<h4 class="mb-3">Painel de Bordo Faturas de Importação</h4>
		<div style="width:100%; display: inline-block">
			<!-- <button type="button" id="filterRequest" class="btn btn-mdb-color pull-right"><i class="fa fa-search mr-2"></i>Filtrar</button>
			<button type="button" id="newRequest" class="btn btn-success pull-left"><i class="fa fa-plus-circle mr-2"></i>Nova Solicitação</button> 
			<button type="button" id="goBack" class="btn btn-mdb-color pull-left"><i class="fa fa-arrow-left mr-2"></i>Voltar</button>-->
		</div>
		<div class="btn-group col-md-12 order-md-1 mb-3" style="width:100%; display: inline-block" >
			<button type="button" id="statusFazerFatura" >FAZER FATURA</button>
			<button type="button" id="statusVerificarDrawback">VERIFICAR DRAWBACK</button>
			<button type="button" id="statusPendente" >PENDENTE</button>
			<button type="button" id="statusverificarPagamento" >VERIFICAR PAGAMENTO</button>
			<button type="button" id="statusAnalisarICMS">ANALISAR ICMS</button>
			<button type="button" id="statusICMSAnalisado">ICMS ANALISADO</button>
			<button type="button" id="statusRPACriarFatura">RPA CRIAR FATURA</button>
			<button type="button" id="statusVerificarRetornoRPA">VERIFICAR RETORNO RPA</button>
			<button type="button" id="statusConcluido">CONCLUÍDO</button>
			<button type="button" id="statusCancelado">CANCELADO</button>
			<!--<button type="button" id="statusAll">TODOS</button>-->
		</div>

		  <table id="requests" class="table table-hover btn-table" style="width:100%">
			<thead class="black-text" style="background-color: #F5F5F5 !important;">
				<tr>
					<th>Visualizar</th>
					<th>Status</th>
					<th>ID</th>
					<th>Data Embarque</th>
					<th>Data Prev Atracação</th>
					<th>Processo</th>
					<th>Empresa</th>
					<th>Centro</th>
					<th>Fornecedor</th>
					<th>Modal</th>
					<th>Incoterm</th>
					<th>Criação</th>
					<th>Data Prev Order</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
</asp:Content>