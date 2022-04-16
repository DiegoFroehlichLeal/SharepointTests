var index = 0;
var forms = {
    form1:
        '<div class="accordion-item" id="<ID_Invoice>">' +
        `
    <h2 class="accordion-header " id="heading<ID_Invoice>">
        <button class="accordion-button bg-primary bg-gradient text-white " type="button" data-bs-toggle="collapse"
            data-bs-target="#collapse<ID_Invoice>" aria-expanded="true" aria-controls="collapse<ID_Invoice>">
            <span id="invoice_number1"> </span>
        </button>
    </h2>
    <div id="collapse<ID_Invoice>" class="accordion-collapse collapse show" aria-labelledby="heading<ID_Invoice>"
        data-bs-parent="#accordionExample">
        <div class="accordion-body">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <!--<div class="form-group has-feedback">
                            <input id="linkFiles" type="text" class="form-control" readonly />
                            <a id="alinkFiles" data-clipboard-target="#linkFiles" alt="Copied text!"><i class="far fa-copy form-control-feedback"></i></a>
                        </div>-->
                    </div>
                    <div class="col-md-6 mb-3">
                        <div id="attachments_<ID_Invoice>" align="right" class="rowAttach"></div>
                    </div>
                </div>
                <div class="row">
                    <section class="pb-4">
                        <div class="bg-white border rounded-5">
                            <section class="w-100 p-2 rounded-top-5 bg-primary">
                                <div class="container-fluid text-center">
                                    <span class="navbar-brand mb-0 h1">Embarque - Cabeçalho</span>
                                </div>
                            </section>
                            <div class="p-4 text-center border-top">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label>CNPJ</label>
                                        <input type="text" class="form-control" id="bill_to_vat_number" readonly>
                                    </div>
                                   
                                    <div class="col-md-6 mb-3">
                                        <label>Moeda</label>
                                        <input type="text" class="form-control" id="currency_code" readonly>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label>Fornecedor</label>
                                        <input type="text" class="form-control" id="fornecedor" readonly>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label>Incoterm</label>
                                        <input type="text" class="form-control" id="incoterms" readonly>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

                <section class="pb-4">
                    <div class="bg-white border rounded-5">
                        <section class="w-100 p-2 rounded-top-5 bg-primary">
                            <div class="container-fluid text-center">
                                <span class="navbar-brand mb-0 h1">Embarque - Pedido</span>
                            </div>
                        </section>
                        <div class="p-4 text-center border-top">
                            <div class="row">
                                <!--<div class="table-responsive">-->
                                <table id="line_items_<ID_Invoice>" class="table table-hover table-bordered "></table>
                                <!--</div>-->
                            </div>
                        </div>
                    </div>
                </section>

                <section class="pb-4">
                    <div class="bg-white border rounded-5">
                        <section class="w-100 p-2 rounded-top-5 bg-primary">
                            <div class="container-fluid text-center">
                                <span class="navbar-brand mb-0 h1">Criar Fatura</span>
                            </div>
                        </section>
                        <div class="p-4 text-center border-top">
                            <div class="row">
                                <div class="col-md-4 mb-3">
                                    <label>Número Fatura</label>
                                    <input type="text" class="form-control" id="invoice_number" readonly>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Data Fatura</label>
                                    <input type="text" class="form-control date" id="date" readonly>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Peso Líquido</label>
                                    <input type="text" class="form-control" id="total_weight" readonly>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Origem</label>
                                    <input type="text" class="form-control" id="raw_name" readonly>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Condição de Pagamento</label>
                                    <input type="text" class="form-control" id="payment_terms" readonly>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Valor Mercadoria</label>
                                    <input type="text" class="form-control money" id="subtotal" readonly>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Valor Frete</label>
                                    <input type="text" class="form-control money" id="" readonly>
                                </div>
                                <div class="col-md-4 mb-3">
                                    <label>Valor Seguro</label>
                                    <input type="text" class="form-control money" id="insurance" readonly>
                                </div>

                                <div class="col-md-4 mb-3">
                                    <label>Total Fatura</label>
                                    <input type="text" class="form-control money" id="total" readonly>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section class="pb-4">
                    <div class="bg-white border rounded-5">
                        <section class="w-100 p-2 rounded-top-5 bg-primary">
                            <div class="container-fluid text-center">
                                <span class="navbar-brand mb-0 h1">Pedido - ME23N</span>
                            </div>
                        </section>
                        <div class="p-4 text-center border-top">
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <label>Endereço</label>
                                    <input type="text" class="form-control" id="address" readonly>
                                </div>
                                <!-- <div class="col-md-4 mb-3">
                            <label>Telefone</label>
                            <input type="text" class="form-control" id="fax_number" readonly>
                        </div> -->
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    `,
}
var formID = "form1";
var valorTotal = 0;
var currencyLocale = Intl.NumberFormat('pt-BR', {
    minimumFractionDigits: 2
});
var count = 0;

function addValueToField(fieldId, value, index) {
    var json = JSON.parse(value);
    if(fieldId == "date"){
        json.value = moment(json.value).format("DD.MM.YYYY");
    }else if(fieldId == "total" || fieldId == "subtotal" || fieldId == "total"){
        json.value = json.value.replace(/,/, '.');
        json.value = parseFloat(json.value).toFixed(2);
        json.value = currencyLocale.format(json.value);
    }
    $("#invoice_" + index + " #" + fieldId).val(json.value);
    if (json.status == true) {
        $("#invoice_" + index + " #" + fieldId).addClass("success");
    }

}

function addValues(data, index) {
    getValuesTables(data, index)

    addValueToField("abn_number", data.abn_number, index);
    addValueToField("account_number", data.account_number, index);
    addValueToField("address", data.address, index);
    addValueToField("bill_to_address", data.bill_to_address, index);
    addValueToField("bill_to_name", data.bill_to_name, index);
    addValueToField("card_number", data.card_number, index);
    addValueToField("category", data.category, index);
    addValueToField("created_on", data.created_on, index);
    addValueToField("currency_code", data.currency_code, index);
    addValueToField("date", data.date, index);
    addValueToField("delivery_date", data.delivery_date, index);
    addValueToField("discount", data.discount, index);
    // addValueToField("document_title", data.document_title, index);
    // addValueToField("document_type", data.document_type, index);
    addValueToField("due_date", data.due_date, index);
    addValueToField("external_id", data.external_id, index);
    addValueToField("fax_number", data.fax_number, index);
    addValueToField("id_ocr", data.id_ocr, index);
    addValueToField("incoterms", data.incoterms, index);
    addValueToField("insurance", data.insurance, index);
    addValueToField("invoice_number", data.invoice_number, index);
    // addValueToField("is_money_in", data.is_money_in, index);
    addValueToField("fornecedor", data.raw_name, index);
    addValueToField("notes", data.notes, index);
    addValueToField("order_date", data.order_date, index);
    addValueToField("payment_terms", data.payment_terms, index);
    addValueToField("payment_type", data.payment_type, index);
    addValueToField("phone_number", data.phone_number, index);
    addValueToField("purchase_order_number", data.purchase_order_number, index);
    addValueToField("raw_name", data.raw_name, index);
    addValueToField("reference_number", data.reference_number, index);
    addValueToField("service_end_date", data.service_end_date, index);
    addValueToField("service_start_date", data.service_start_date, index);
    addValueToField("ship_date", data.ship_date, index);
    addValueToField("shipping", data.shipping, index);
    addValueToField("subtotal", data.subtotal, index);
    addValueToField("tax", data.tax, index);
    addValueToField("tip", data.tip, index);
    addValueToField("total", data.total, index);
    addValueToField("total_weight", data.total_weight, index);
    addValueToField("updated", data.updated, index);
    addValueToField("vat_number", data.vat_number, index);
    addValueToField("bill_to_vat_number", data.bill_to_vat_number, index);
    $("#invoice_" + index + " #invoice_number1").html(`<span class="navbar-brand mb-0 h1">Invoice:  ${JSON.parse(data.invoice_number).value}</span>`)   
    /* --------------------------------------------------------------------- */
    numberString = JSON.parse(data.total).value.replace(/,/, '.');

    var parsed = Number(parseFloat(numberString).toFixed(2));
    // console.log(valorTotal + " - " + typeof(valorTotal) + " + " + parsed + " - " + typeof(parsed));

    valorTotal = Number(parseFloat(valorTotal + parsed).toFixed(2));
    // console.log(valorTotal + " - " + typeof(valorTotal));

    document.getElementById('valorTotal').value = currencyLocale.format(valorTotal);
    /* --------------------------------------------------------------------- */
    var guid = GetURLParameter('GUID');
    var ocrList = GetListByName('OCR_Invoices').Id.toUpperCase();
    var dataEmbarque = GetListItems(ocrList, "?$select=shipment/Embarque&$expand=shipment&$filter=shipment eq '" + guid + "'&$top=999999");
    document.getElementById('processo').value = dataEmbarque[0].shipment.Embarque ;
    /* --------------------------------------------------------------------- */

    // $("#linkFiles").val("Q:\\GROUPS\\WID_JGS_LOGISTICA\\IMPORTACAO\\RPA\\Documentos dos Embarques\\DESPACHANTE\\" + dataEmbarque[0].shipment.Embarque);
}

function LoadForm(fieldValue) {
    $('#form').html('');
    var guid = GetURLParameter('GUID');
    var ocrList = GetListByName('OCR_Invoices').Id.toUpperCase();
    var data = GetListItems(ocrList, "?$filter=shipment eq'" + guid + "'&$top=999999");
    
    data.forEach(element => {
        index += 1;
        CreateForm(forms[fieldValue].replaceAll("<ID_Invoice>", "invoice_" + index));
        addValues(element, index);
    });
    
    SetMasks();
}

function SetMasks() {
    $('.date').mask('00.00.0000');
}

function CreateForm(form) {
    $('#form').append(form);
}

function getValuesTables(data, index) {
    var ocrListItens = GetListByName('OCR_Line_Items').Id.toUpperCase();
    // Pedido e material ainda não existem.
    var dataForTable = GetListItems(ocrListItens, "?$select=description,weight,total,price,quantity,sku&$filter=invoice eq " + data.ID + "&$top=999999");
    // Delete "__metadata" field from all the items
    dataForTable.forEach(element => {
        delete element.__metadata;
    });
    createTable("line_items_invoice_" + index, dataForTable);
    LoadAttachments(data.ID, index)
}

function createTable(tableId, data) {
    $("#" + tableId).DataTable({
        data: data,
        columns: [
            { title: "Descrição", data: "description" },
            { title: "Número do Pedido", data: "sku" },
            { title: "Peso Líquido", data: "weight" },
            { title: "Preço Líquido", data: "price" },
            { title: "Quantidade", data: "quantity" },
            { title: "Total", data: "total" },
        ],
        columnDefs: [
            {
                targets: '_all',
                render: function (data, type, row, meta) { return renderFunction(JSON.parse(data), type, row, meta, "#" + tableId) },
                createdCell: function (td, cellData) { setStatus(td, JSON.parse(cellData)) }
            }
        ],
        paging: false,
        ordering: false,
        info: false,
        searching: false
    });
    $(".fg-toolbar").remove();
}

function renderFunction(dataObj, type, row, meta, tableId) {
    var title = $(tableId).DataTable().columns( meta.col ).header()

    if (dataObj.value.trim() != "" && dataObj.value.trim() != null) {
        if($(title).html() == "Preço Líquido" || $(title).html() == "Total"){
            return currencyLocale.format(parseFloat(dataObj.value.replace(/,/, '.')).toFixed(2));
        }else{
            return dataObj.value;
        }
    } else {
        return "***";
    }
}

function setStatus(td, dataObj) {
    if (dataObj.status === true) {
        $(td).addClass('success');
    }
}

// Carrega anexos ao entrar no formulário de cadastro
function LoadAttachments(guid, index) {

    var ocrList = GetListByName('OCR_Invoices').Id.toUpperCase();
    var attachments = GetListItemAttachments(ocrList, guid);
    $('#attachments_invoice_' + index).html('');
    var cont = 0;
    attachments.forEach(function (attach) {
        var fileName = attach.FileName;
        var url = attach.ServerRelativeUrl;
        AttachHtml(cont, fileName, url, index);
        cont++;
    });
}

// Adiciona uma linha na tabela de anexos do formulário de cadastro
function AttachHtml(cont, fileName, url, index) {
    // var fileName2 = "'" + fileName + "'";
    $('#attachments_invoice_' + index).append(
        '<span id="tdServerRelativeUrl" style="text-align: center;">Anexos: ' +
        '<a href="' + url + '" target="_blank">' +
        '<i class="fa fa-paperclip" style="color: rgb(255, 255, 255); font-size: 21px; box-sizing: content-box; line-height: 30px; text-align: center; width: 30px; height: 30px; display: inline-block; overflow: hidden; border-radius: 50%; background-color: rgb(0, 114, 198);"></i>' +
        '</a>	' +
        '</span>'
    );
}