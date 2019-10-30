<?php
/*
 * Created on 21/10/2011
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
header('Content-Type: text/html; charset=UTF-8');
header('Content-Disposition", "attachment;filename=myfilename.xls');
header( 'X-Frame-Options: SAMEORIGIN' );
require ("classes/cot.php");


function SearchOT()
{

    if (isset($_POST["inputText"])) {
    

    $ix = strip_tags($_POST["inputText"]); 
    $ix2 = strip_tags($_POST["hdnText"]); 
    $btn = strip_tags($_POST["Search"]);

    $inputText = (!isset($ix)?"": $ix);
    $procesar = (!isset($btn)?"":$btn);
    $textFil = (!isset($ix2)?"":$ix2);

    if (isset($procesar)) {
       
       $result = Search($inputText,$textFil);
        echo $result;
    }
}
}




?>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Ofertas Tecnológicas - Secretaría de Cooperación Técnica y Relaciones Internacionales</title>
        <link href="css/style.css?v=0.12212211" rel="stylesheet" />
        <link href="css/popin.css" rel="stylesheet" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1"/>
        <script type="text/javascript" src="js/scripts.js?v=0.1"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/jquerycol.js"></script>
        <script type="text/javascript" src="js/popin.js"></script>
        <script>
            (function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function() {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-40909718-1', 'unsa.edu.ar');
            ga('send', 'pageview');

        </script>
    </head>
    <body>

        <div align="center">
            <div id="content" align="center">

                <form id="formSearch" action="index.php" method="post">

                    <div class="titlePag">Secretaría de Cooperación Técnica y Relaciones Internacionales - Universidad Nacional de Salta</div>
                    <br/>

                    <div class="titleSubPag">Listado de Ofertas Tecnológicas</div>
                    <br/>

                    <table cellpadding="0" cellspacing="0" style="width:440px">
                        <tr>

                            <td align="right" style="width:99%"><input type="text" id="inputText" name="inputText" style="width:99%;" /></td>
                            <td align="left"><input type="submit" id="btnBuscar"  value="Buscar" name="Search"/></td>

                        </tr>

                    </table>
                  <div id="divCat">
                
    <div class="main-wrapper">
        <!-- Titulo -->
        

        <div class="container">
            <!-- Inputs de las Categorias -->
            <input name="category-css" id="all" type="radio" checked>
            <input name="category-css" id="ambientales" type="radio">
            <input name="category-css" id="energia" type="radio">
            <input name="category-css" id="salud" type="radio">
            <input name="category-css" id="alimentos" type="radio">

            
            <!-- Categorias -->
            <ul class="list-category">
                <li><label for="all">Todos</label></li>
                <li><label for="ambientales"> Tecnologías Ambientales</label></li>
                <li><label for="energia">Energía</label></li>
                <li><label for="alimentos">Tecnologías alimentarias y recursos </label></li>
                <li><label for="salud">Biomedicina y Ciencias para la Salud </label></li>
            </ul>


            <!-- Lista de Imagenes -->
            <ul class="list-images clearfix">
                <li class="type-ambientales"><span>Tecnologías</span></li>
                <li class="type-energia"><span>Eficiencia   </span></li>
                <li class="type-alimentos"><span> Programas de I+D</span></li>
                <li class="type-energia"><span>Radiación Solar</span></li>
                <li class="type-alimentos"><span>Nutrición</span></li>
                <li class="type-salud"><span>Patologías</span></li>
                <li class="type-alimentos"><span>Agroalimentación</span></li>
                <li class="type-energia"><span>Fotolvoltaica</span></li>
                
                
                
                
                
                
            </ul>
        </div>
    </div>


                  </div>

                    <br/>
                    <div class="litle-msg">Búsqueda sobre Unidad Instituto, Servicio, Laboratorio.</div>
     

                    <div id="divResult" style="border:solid 0px #CCC;padding:10px;width:97%">

                        <?php
                             SearchOT();
                        ?>
                    </div>
                    <input type="hidden" id="hdnText" name="hdnText" value="">
                </form>
                <div>


                </div>
            </div>
        </div>

        <div class="textFooter">Para la corrección de información por favor dirigirse a la Sec. Cooperación Técnica y Relaciones Internacionales <br/> Universidad Nacional de Salta - 2019  </div>
        <br/>
        <div id="divOpciones" style="display:none;width:500px;height: 80px;">
            <div id="divBarraOpt"  style="padding:10px;">




                Ocultar/Mostrar columna:
                <select id="ddlColumns" >
                    <option value="1">Unidad</option>
                    <option value="2">Dependencia</option>
                    <option value="3">Servicio</option>
                    <option value="5">Responsable</option>
                    <option value="4">Domicilio</option>
                    <option value="6">Telefono</option>
                    <option value="6">Email</option>
                    <option value="6">Web</option>
                </select>

                <input type="button" id="buttonHide" onclick="ShowHideColumn();" value="Ocultar/Mostrar">
                <input type="button" id="buttonshowall" value="Mostrar todas" onclick="ShowAllColums();"/></div>
        </div>
    </body>
</html>
