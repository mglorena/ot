var _WebSitePath = document.location.href;
_WebSitePath = _WebSitePath.substring(0, _WebSitePath.indexOf("guia/", 0) + 5);
   
var _iBrowserHeight;
var _iBrowserWidth;
if (document.all) {
    _iBrowserHeight = document.documentElement.offsetHeight;
    _iBrowserWidth = document.documentElement.offsetWidth;
}
else {
    try {
        if (document.documentElement) {
            _iBrowserHeight = document.documentElement.clientHeight;
            _iBrowserWidth = document.documentElement.clientWidth;
        }
        else {
            _iBrowserHeight = document.body.clientHeight;
            _iBrowserWidth = document.body.clientWidth;
        }
    }
    catch (e) {  //            var iBrowserHeight = $(window).height();  var iBrowserWidth = $(window).width();
       
    }
}
function getId(id)
{
    if(document.getElementById(id) != null)
    {
        return document.getElementById(id);
    }
    else return null;
}

function SearchBy(ddl)
{
    var text = $("#"+ddl.id +" option:selected").text();
    if(text == "Todos") text ="";
    $("#inputText").val("departamento:"+text);
    $("#divTitFiltro").html(text);
    $("#hdnText").val(text);
    $("#btnBuscar").click();
   
}

var windowObjectReference = null; // global variable
 

function ShowHideColumn()
{
    var v = $('#ddlColumns').val();
    $('#tblResult').toggleColumns([+v]);
 
 
}
function PopinOptions(ev)
{
    titlePopin ="Opciones"; 
    Popin(ev,"divOpciones",5);
        
}
function ShowAllColums()
{

    $('#tblResult').find('td').each(function(){
        $(this).show();
    });
}