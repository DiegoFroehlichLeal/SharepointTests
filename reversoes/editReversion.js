$(document).ready(function () {
    LoadCurrentUser(SiteUrl);
    //AddApprover();

    var allowEditContab = false;

    try {
        var group = GetSiteGroupByName('BR - CORP - CONTROL - DEP_CONTB - PROVISOES - CONTAB');

        group.Users.results.forEach(function (item) {

            if (item.Title == SiteUser.Name) {
                allowEditContab = true;
            }
        });
    }
    catch (error) { }

    GetCurrentSiteUrl();
    SetFieldsReadOnly();
    AddListener();
    RemoveSelectItem();
    RemoveTipoProvisaoItem();
    LoadTipoDespesa();
    LoadIdProvision();

    var dataProvision;
    var idOld;
    var valorReverOld;
    var statusOld;

    /*function AddApprover(){
        var userInfo = GetListItems("FFB698B0-6404-4913-ABEE-2BC5357F85EF","?$filter=ID eq '" + SiteUser.Id + "'");
    
        $('[title^="Aprovador"]').text(" " + userInfo[0].Gestor);
        $("#ctl00_ctl32_g_320c246f_4bf7_45c8_b799_c80e4e32e1f3_ff151_ctl00_ctl00_UserField_checkNames").click();
    }*/

   function RemoveTipoProvisaoItem() {

        var selectTipoDespesa = document.querySelector("select[title^='Tipo despesa Campo Obrigatório']");

        var currentListName = $("#pageTitle > span > span > a").text();

        var lista = currentListName.match(/(.*?)(?= -)/);
        // Search parameter infos in 'Parâmetros Contabilização' list
        var listGuid = GetListByName('Parâmetros Contabilização').Id.toUpperCase();
        var data = GetListItems(listGuid, "?$select=TipoDespesa&$filter=Lista eq '" + lista[0] + "' and Lancamento eq 'Reversão'&$top=999999");

        var lenght = selectTipoDespesa.length;

        for (var i = 0; i < lenght; i++) {
            var count = 0;

            for (var j = 0; j < data.length; j++) {
                if (data[j].TipoDespesa != selectTipoDespesa.options[i].text) {
                    count++;
                }
                if (count == data.length) {
                    selectTipoDespesa.remove(i);
                    lenght--;
                    i--;
                }
            }
        }

    } 

    function AddListener() {
        //Add event listener to 'Valor reversao' input so it will call 'VerifyInput()'

        var inputValorRever = document.querySelector('[title="Valor reversão Campo Obrigatório"]');

        //Whenever a key is pressed on the input tag
        inputValorRever.addEventListener('keyup', function () {
            VerifyInput();
        });
    }

    function RemoveSelectItem() {
        var currentListName = $("#pageTitle > span > span > a").text();
        var lista = currentListName.match(/\([^()]+\)/);

        // Search parameter infos in 'FRETES SOBRE VENDAS - PROVISÕES' list
        var listGuid = GetListByName('SERVIÇOS SOBRE VENDAS - PROVISÕES ' + lista[0]).Id.toUpperCase();

        var data = GetListItems(listGuid, "?$select=ID,Saldo,Status");

        //This for removes items in the select tag
        for (var i = 0; i < data.length; i++) {
            if (0 >= parseFloat(data[i].Saldo)) {
                $('option[value="' + data[i].ID + '"]').remove();
            } else if (data[i].Status != 'Contabilizado') {
                $('option[value="' + data[i].ID + '"]').remove();
            }
        }

        // ---------------------------------- Remove Status ----------------------------------------------

        var selectStatus = document.querySelector("select[title^='Status Campo Obrigatório']");
        //Remove 'Em cadastramento'
        //selectStatus.remove(0);
    }

    function SetFieldsReadOnly() {
        $("select[title^='ID provisão']").attr("style", "pointer-events: none; touch-action: none;");
        // Disable field 'Empresa'
        $("input[title^='Empresa']").attr('disabled', true);
        // Disable field 'PEP'
        $("input[title^='Pep']").attr('disabled', true);
        // Disable field 'CodigoCliente'
        $("input[title^='CodigoCliente']").attr('disabled', true);
        // Disable field 'Cliente'
        $("input[title^='Cliente']").attr('disabled', true);
        // Disable field 'CentroDeLucro'
        $("input[title^='CentroDeLucro']").attr('disabled', true);
        // Disable field 'Segmento'
        $("input[title^='Segmento']").attr('disabled', true);
        // Disable field 'Unidade'
        $("input[title^='Unidade']").attr('disabled', true);
        // Disable field 'Lista'
        $("input[title^='Lista']").attr('disabled', true);
        // Disable field 'Saldo'
        $("input[title^='Saldo']").attr('disabled', true);
        // Disable field 'Tipo Despesa'
        $('select[title^="Tipo Despesa"]').attr("style", "pointer-events: none; touch-action: none;");
        // ReadOnly field 'Conta DB'
        $("input[title^='Conta DB']").get(0).readOnly = true;
        // ReadOnly field 'Conta CR'
        $("input[title^='Conta CR']").get(0).readOnly = true;

        //$("input[title^='Conta DB']").attr('disabled', true);
        //$("input[title^='Conta CR']").attr('disabled', true);

        //document.querySelector("[title^='ValorReversaoOld']").readOnly = true;
        //document.querySelector("[title^='StatusOld']").readOnly = true;

        $("input[title^='Valor reversão Campo Obrigatório']").mask("#,00", { reverse: true });

        $('.ms-formbody > span > input').attr('readOnly', true);
        //$('.ms-formbody > span > select').attr("style", "pointer-events: none; touch-action: none;");
        $('.ms-formbody > span > textarea').attr('readOnly', true);
        $('.ms-dtinput > input').attr('readOnly', false);
        //$('.ms-dtinput > a').attr("style", "pointer-events: none; touch-action: none;");
        $('td[id$="UserField_containerCell"] > div').attr('contenteditable', false);
        $('a[id$="UserField_checkNames"]').attr("style", "pointer-events: none; touch-action: none;");
        $('a[id$="UserField_browse"]').attr("style", "pointer-events: none; touch-action: none;");
        $('input[name$="SaveItem"]').attr('disabled', true);
        document.querySelector("[title^='RITM']").readOnly = false;
        $("[title^='Tipo despesa']").attr("style", "pointer-events: none; touch-action: none;")

        if (allowEditContab) {
            $("select[title^='Status Campo Obrigatório']").removeAttr('style');
            $('input[name$="SaveItem"]').attr('disabled', false);
            $('input[title^="Documento"]').attr('readOnly', false);
            allowed = true;
        } else {
            alert('Você não possui autorização para edição ou a Provisão não pode mais ser editada!')
        }
    }

    $("select[title^='ID Provisão']").on("change", function () {

        var e = document.querySelector('[title="ID Provisão"]');
        var strUser = e.options[e.selectedIndex].value;

        if (strUser == "0") {
            return;
        }

        var currentListName = $("#pageTitle > span > span > a").text();
        var lista = currentListName.match(/\([^()]+\)/);

        // Search parameter infos in 'SERVIÇOS SOBRE VENDAS' list
        var listGuid = GetListByName('PERDAS NOS ESTOQUES SEM MOVIMENTO - PROVISÕES ' + lista[0]).Id.toUpperCase();
        dataProvision = GetListItems(listGuid, encodeURI("?$select=Empresa,PEP,CodigoCliente,Cliente,CentroLucro,Segmento,Unidade,Lista,Aprovador,Saldo,TipoDespesa&$filter=ID eq '" + strUser + "'&$top=999999"));

        //Enable field 'Valor reversao'
        $("input[title^='Valor reversão Campo Obrigatório']").attr('disabled', false);
        // Set field 'Empresa'
        $("input[title^='Empresa']").val(dataProvision[0].Empresa);
        // Set field 'PEP'
        $("input[title^='Pep']").val(dataProvision[0].PEP);
        // Set field 'CodigoCliente'
        $("input[title^='CodigoCliente']").val(dataProvision[0].CodigoCliente);
        // Set field 'Cliente'
        $("input[title^='Cliente']").val(dataProvision[0].Cliente);
        // Set field 'CentroDeLucro'
        $("input[title^='CentroDeLucro']").val(dataProvision[0].CentroLucro);
        // Set field 'Segmento'
        $("input[title^='Segmento']").val(dataProvision[0].Segmento);
        // Set field 'Unidade'
        $("input[title^='Unidade']").val(dataProvision[0].Unidade);
        // Set field 'Lista'
        $("input[title^='Lista']").val(dataProvision[0].Lista);
        // Set field 'Saldo'
        $("input[title^='Saldo']").val(new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(Number(dataProvision[0].Saldo)));

        $("input[title^='Aprovador']").val(data[0].Aprovador);

        $('select[title^="Tipo Despesa"]').val(dataProvision[0].TipoDespesa);
        $('select[title^="Tipo Despesa"]').change();

    });

    function LoadIdProvision() {

        var e = document.querySelector('[title="ID provisão"]');
        var strUser = e.options[e.selectedIndex].value;

        if (strUser == "0") {
            return;
        }

        idOld = strUser;

        //Store the first value
        var inputValorRever = document.querySelector('[title="Valor reversão Campo Obrigatório"]');
        var selectStatus = document.querySelector("select[title^='Status Campo Obrigatório']");

        valorReverOld = parseFloat(inputValorRever.value.replace(',', '.'));
        statusOld = selectStatus.options[selectStatus.selectedIndex].value;

        var currentListName = $("#pageTitle > span > span > a").text();
        var lista = currentListName.match(/\([^()]+\)/);

        // Search parameter infos in 'SERVIÇOS SOBRE VENDAS' list
        var listGuid = GetListByName('PERDAS NOS ESTOQUES SEM MOVIMENTO - PROVISÕES ' + lista[0]).Id.toUpperCase();
        dataProvision = GetListItems(listGuid, encodeURI("?$select=Empresa,PEP,CodigoCliente,Cliente,CentroLucro,Unidade,Lista,Saldo,TipoDespesa&$filter=ID eq '" + strUser + "'&$top=999999"));

        //Enable field 'Valor reversao'
        $("input[title^='Valor reversão Campo Obrigatório']").attr('disabled', false);
        // Set field 'Empresa'
        $("input[title^='Empresa']").val(dataProvision[0].Empresa);
        // Set field 'PEP'
        $("input[title^='Pep']").val(dataProvision[0].PEP);
        // Set field 'CodigoCliente'
        $("input[title^='CodigoCliente']").val(dataProvision[0].CodigoCliente);
        // Set field 'Cliente'
        $("input[title^='Cliente']").val(dataProvision[0].Cliente);
        // Set field 'CentroDeLucro'
        $("input[title^='CentroDeLucro']").val(dataProvision[0].CentroLucro);
        // Set field 'Segmento'
       // $("input[title^='Segmento']").val(dataProvision[0].Segmento);
        // Set field 'Unidade'
        $("input[title^='Unidade']").val(dataProvision[0].Unidade);
        // Set field 'Lista'
        $("input[title^='Lista']").val(dataProvision[0].Lista);
        // Set field 'Saldo'
        $("input[title^='Saldo']").val(new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(Number(dataProvision[0].Saldo)));
        // Set field 'Lista'
        $("input[title^='ValorReversaoOld']").val(valorReverOld);
        $("input[title^='StatusOld']").val(statusOld);

        $('select[title^="Tipo Despesa"]').val(dataProvision[0].TipoDespesa);
        $('select[title^="Tipo Despesa"]').change();

    }

    function LoadTipoDespesa() {


        // --------------------------------- Remove element 0 wich is blank ------------------------------

        var selectTipoDespesa = document.querySelector("select[title^='Tipo despesa Campo Obrigatório']");

        if (selectTipoDespesa[0].value == "Selecione") {
            selectTipoDespesa.remove(0);
        }

        // Fills 'Conta DB' and 'Conta CR'
        var currentListName = $("#pageTitle > span > span > a").text();
        var lista = currentListName.match(/(.*?)(?= -)/);
        // Search parameter infos in 'Parâmetros Contabilização' list
        var listGuid = GetListByName('Parâmetros Contabilização').Id.toUpperCase();
        var data = GetListItems(listGuid, encodeURI("?$select=ContaDB,ContaCR&$filter=Lista eq '" + lista[0] + "' and Lancamento eq 'Reversão' and TipoDespesa eq '" + selectTipoDespesa.options[selectTipoDespesa.selectedIndex].text + "'&$top=999999"));

        // Set field 'Conta DB'
        $("input[title^='Conta DB']").val(data[0].ContaDB);
        // $("input[title^='Conta DB Campo Obrigatório']").val(data[0].ContaDB);
        // Set field 'Conta CR'
        $("input[title^='Conta CR']").val(data[0].ContaCR);
    }
})