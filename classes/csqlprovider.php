<?php
require_once 'classes/cconf.php';
class sqlprovider {
    var $conexion;
    var $resource;
    var $sql;
    var $queries;
    var $singleton;
    /* var $dbname = $BD_NAME; */
    function getInstance() {
        if (isset($this->singleton)) {
            $this->$singleton = new DataBase();
        }
        return $this->singleton;
    }
    function execute() {
        
        try {
            $this->conexion = mysqli_connect(Conf::DB_SERVER, Conf::DB_USER, Conf::DB_PASS);
           
            mysqli_select_db($this->conexion, Conf::DB_NAME);
            $this->queries = 0;
            $this->resource = null;
            if (!($this->resource = mysqli_query($this->conexion, $this->sql))) {
                
                return null;
            }
            $this->queries++;
            return $this->resource;
        } catch (Exception $ex) {
            
        }
        return null;
    }
    function update() {
        // echo $this->sql;
        if (!($this->resource = mysqli_query($this->conexion, $this->sql))) {
            
            
            return false;
        }
        return true;
    }
    function ErrorDetail() {
        return mysqli_error($this->conexion);
    }
    function ListArray() {
        if (!($cur = $this->execute())) {
            return null;
        }
        $array = array();
        while ($row = @mysqli_fetch_array($cur)) {
            $array[] = $row;
        }
        return $array;
    }
    function ListObject() {
        if (!($cur = $this->execute())) {
            return null;
        }
        $array = array();
        while ($row = @mysqli_fetch_object($cur)) {
            array_push($array, $row);
        }
        return $array;
    }
    function ListObject2() {
        if (!($cur = $this->execute())) {
            return null;
        }
        $array = array();
        while ($row = @mysqli_fetch_row($cur)) {
            array_push($array, $row);
        }
        return $array;
    }
    function setQuery($sql) {
        if (empty($sql)) {
            return false;
        }
        $this->sql = $sql;
        return true;
    }
    function freeResults() {
        @mysqli_free_result($this->resource);
        return true;
    }
    function getObject() {
        if ($cur = $this->execute()) {
            if ($object = mysqli_fetch_object($cur)) {
                @mysqli_free_result($cur);
                return $object;
            } else {
                
                
                return null;
            }
        } else {
            return false;
        }
    }
    function CloseMysql() {
        @mysqli_free_result($this->resource);
        @mysqli_close($this->conexion);
    }
}
?>