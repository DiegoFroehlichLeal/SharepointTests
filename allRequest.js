SiteUser;
SiteRequests="/newRequest.aspx?GUID=";

function LoadRequests(filter){
    LoadCurrentUser();
    var listGuid = GetListByName('Embarques').Id.toUpperCase();
    //console.log(filter);
    if(filter==""){
        var requests = GetListItems(listGuid,"?$select=STATUS,ID, Dt_Embarque,Dt_Prev_Chegada,Embarque,Empresa,Center,Descricao,Modal,Incoterm,Created&$top=999999");
    }else{
        var requests = GetListItems(listGuid,"?$select=STATUS,ID, Dt_Embarque,Dt_Prev_Chegada,Embarque,Empresa,Center,Descricao,Modal,Incoterm,Created&$filter=STATUS eq '"+filter+"'"+"&$top=999999");
    //var requests = GetListItems(listGuid,"?$select=STATUS,ID, Dt_Embarque,Dt_Prev_Chegada,Embarque,Empresa,Center,Descricao,Modal,Incoterm,Created&$top=999999");
    // UpdateThead(); 
}
    CreateTable(requests);
}

function CreateTable(requests){
    table = $('#requests').DataTable();
    table.destroy();
    
    table = $('#requests').DataTable( {
        columnDefs : [
            {"className": "dt-center", "targets": "_all"},
           // {"className": "dt-center", "targets": "_all"},
        ],
        fnCreatedRow: function (nRow, aData) {
            $(nRow).attr('id', 'row' + aData.ID);
        },
        order: [[ 12, "asc" ]],
        ordering:true,
        pageLength: 100,
        orderCellsTop: true,
        fixedHeader: true,
        language: {
            "bFilter": false,
            "lengthMenu": "Mostrar _MENU_ itens por página",
            "zeroRecords": "Nenhum item encontrado",
            "info": "Mostrando _PAGE_ de _PAGES_ páginas",
            "infoEmpty": "Nenhum item disponível",
            "infoFiltered": "(filtrado em um total de _MAX_ itens)",
            "search" : "Buscar",
            "paginate": {
                "previous": "Anterior",
                "next": "Próximo"
            },
        },
        aaData : requests,
        aoColumns : [
            {"mData": "ID","render": function (item) {
                return ('<a href="' + SiteRequests + item + '" class="buttonList"><img src="../SiteAssets/img/View-24.png"></a>');
            }},
            {"mData": "STATUS"},
            {"mData": "ID"},
            //{"mData": "Dt_Embarque"},
            {"mData": "Dt_Embarque","render": function (item) {
                if(item!="" && item != null && item!= undefined){
                var convertDate = item.split('.');
                var newDate = new Date(convertDate[2],convertDate[1]-1,convertDate[0]);
                return (moment(newDate).format('DD.MM.YYYY'));
                }else{
                    return item;
                }
            } },
            {"mData": "Dt_Prev_Chegada","render": function (item) {
                if(item!="" && item != null && item!= undefined){
                var convertDate = item.split('.');
                var newDate = new Date(convertDate[2],convertDate[1]-1,convertDate[0]);
                return (moment(newDate).format('DD.MM.YYYY'));
                }else{
                    return item;
                }
            }},
            {"mData": "Embarque"},
            {"mData": "Empresa"},
            {"mData": "Center"},
            {"mData": "Descricao"},
            {"mData": "Modal"},
            {"mData": "Incoterm"},
            {"mData": "Created","render": function (item) {
                return (moment(item).format('DD/MM/YYYY HH:mm'));
            }},
            {"mData": "Dt_Prev_Chegada","render": function (item) {
                if(item!="" && item != null && item!= undefined){
                var convertDate = item.split('.');
                var newDate = new Date(convertDate[2],convertDate[1]-1,convertDate[0]);
                return (moment(newDate).format('YYYYMMDD'));
                }else{
                  return item;
                }
            },"bVisible": false },
        ]
    });
    // $("[data-toggle='tooltip']").tooltip();
    $('table#requests tbody tr').addClass('grey lighten-5 mov');
    $('table#requests thead tr:last-child th').attr('class','');
}

$(document).ready(function () {

    $(document).on ("click", "#statusAll", function () {
        //GetCurrentSiteUrl();
        LoadRequests('');
    });
    $(document).on ("click", "#statusFazerFatura", function () {
        //GetCurrentSiteUrl();
        LoadRequests('FAZER FATURA');
    });
    $(document).on ("click", "#statusPendente", function () {
        //GetCurrentSiteUrl();
        LoadRequests('PENDENTE');
    });    
    $(document).on ("click", "#statusVerificarDrawback", function () {
        //GetCurrentSiteUrl();
        LoadRequests('VERIFICAR DRAWBACK');
    });
    $(document).on ("click", "#statusverificarPagamento", function () {
        //GetCurrentSiteUrl();
        LoadRequests('VERIFICAR PAGAMENTO');
    });
    $(document).on ("click", "#statusRPACriarFatura", function () {
        //GetCurrentSiteUrl();
        LoadRequests('CRIAR FATURA');
    });
    $(document).on ("click", "#statusConcluido", function () {
        //GetCurrentSiteUrl();
        LoadRequests('CONCLUIDO');
    });
    $(document).on ("click", "#statusCancelado", function () {
        //GetCurrentSiteUrl();
        LoadRequests('CANCELADO');
    });
    $(document).on ("click", "#statusAnalisarICMS", function () {
        //GetCurrentSiteUrl();
        LoadRequests('ANALISAR ICMS');
    });
    $(document).on ("click", "#statusICMSAnalisado", function () {
        //GetCurrentSiteUrl();
        LoadRequests('ICMS ANALISADO');
    });
    $(document).on ("click", "#statusVerificarRetornoRPA", function () {
        //GetCurrentSiteUrl();
        LoadRequests('VERIFICAR RETORNO RPA');
    });

    $(document).on ("click", "#goBack", function () {
        window.location.href = RelativeUrl;
    });
});










