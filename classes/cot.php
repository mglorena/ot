<?php

/*
 * Created on 21/10/2011
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
require_once ('cconf.php');
require_once ('csqlprovider.php');


function ConsultaSql($inputText, $text) {
    $internos = array();
    $query = "";
    try {
        $db = new sqlprovider();
        $db->getInstance();
        $query = "call ot_search('" . $inputText . "','" . $text . "');";
        if ($db->setQuery($query))
            $ots = $db->ListArray();
        $db->CloseMysql();
        return $ots;
    } catch (Exception $ex) {
        echo "hubo error de base de datos " . $ex->getMessage();
    }
    return null;
}

function Search($inputText, $text) {

    

    $inputText2 = $inputText;

    if (strpos($inputText, 'á') !== false)
        $inputText2 = str_replace('á', 'a', $inputText);
    if (strpos($inputText, 'é') !== false)
        $inputText2 = str_replace('é', 'e', $inputText);
    if (strpos($inputText, 'í') !== false)
        $inputText2 = str_replace('í', 'i', $inputText);
    if (strpos($inputText, 'ó') !== false)
        $inputText2 = str_replace('ó', 'o', $inputText);
    if (strpos($inputText, 'ú') !== false)
        $inputText2 = str_replace('ú', 'u', $inputText);

    $result = ConsultaSql($inputText, $inputText2);

    $html = "<div class='titleFil'>" . $text . "</div><table id='tblResult' cellpadding='0' cellspacing='0'  class='tableList'>";
    $html .= '<tr class="listtitle">';
    $html .= '<td >Unidad</td>';
    $html .= '<td >Dependencia</td>';
    $html .= '<td >Servicio</td>';
    $html .= '<td >Responsable</td>';
    $html .= '<td >Domicilio</td>';
    $html .= '<td >Telefono</td>';
    $html .= '<td >Email</td>';
    $html .= '<td >Web</td></tr>';
    $count = 0;
    $class = 'listitemeven';
    
    
    foreach ($result as $ot) {
        if ($count % 2 == 0)
            $class = 'listitemeven';
        else
            $class = 'listitemuneven';
        $html .= '<tr class="' . $class . '">';
        $html .= '<td class="noWrap">' . $ot['Unidad'] . '&nbsp;</td>';
        $html .= '<td class="noWrap">' . $ot['Dependencia'] . '&nbsp;</td>';
        $html .= '<td class="noWrap" >' . $ot['Servicio'] . '&nbsp;</td>';
        $html .= '<td class="noWrap">' . $ot['Responsable'] . '&nbsp;</td>';
        $html .= '<td class="noWrap">' . $ot['Domicilio'] . '&nbsp;</td>';
        $html .= '<td class="noWrap">' . $ot['Telefono'] . '&nbsp;</td>';
        $html .= '<td class="noWrap">' . $ot['Email'] . '&nbsp;</td>';
        $html .= '<td class="noWrap">' . $ot['Web'] . '&nbsp;</td></tr>';
        $count++;
    }
    $html .="</table><script>   
        </script>";
    return $html;
}

function DropDownDepto() {
    /*$query = "SELECT departamentos.id_depto, NombreCompleto FROM departamentos INNER JOIN internos ON internos.deptoId = departamentos.id_depto WHERE interno NOT LIKE '7%' AND NombreCompleto <> '' AND NombreCompleto <> 'Por Defecto' group by NombreCompleto Order by NombreCompleto;";
    $conexion = mysql_connect(Conf::HOSTNAME, Conf::DB_USER, Conf::DB_PASS) or die("error: " . Conf::HOSTNAME . "," . Conf::DB_USER . "," . Conf::DB_PASS . " - " . mysql_error());
    mysql_select_db(Conf::DB_NAME, $conexion) or die("error, " . Conf::DB_NAME . "," . Conf::DB_PASS . mysql_error());
    mysql_query("SET NAMES 'utf8'; ", $conexion);
    $result = mysql_query($query, $conexion);
*/
    $select = "<select id=\"ddlDepto\" name=\"ddlDepto\" onchange=\"SearchBy(this)\">";
    $select.= "<option value='-1' ></option>";
    $select.= "<option value='0' >Todos</option>";
/*
    while ($d = mysql_fetch_row($result)) {
        $select.= "<option value='" . $d[0] . "' >" . $d[1] . "</option>";
    }*/
    $select.="</select>";
    return $select;
}

?>
