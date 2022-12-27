<?php

require_once(__ROOT__ . "/db/Conexion.php");
require_once(__ROOT__ . "/modelo/GeneroModeloUsuario.php");
class GeneroUsuario extends Conexion {

    public function __construct() {
        parent::__construct();
    }

    public function get_genero() {
        $sql = "SELECT *  FROM USUARIO ";
        $result = $this->_db->query($sql);
        if ($result) {
            $data = [];
            while ($row = $result->fetch_object('GeneroModeloUsuario')) {
                $data[]=$row;
            }
            return $data;
        } else {
            die("Error en la ejecución del query: " . print_r($this->_db->error, true));
        }
    }

    public function createOrUpdateUsuario($idusuario,$nombre,$apelliido,$login,$pwd,$rol) {
        $insert = " INSERT INTO usuario(nombre, apellido, login, pwd, rol) VALUES('$nombre','$apelliido','$login','$pwd', '$rol')";
       
        $sql =  $insert;
        $result = $this->_db->query($sql);
        if ($result) {            
            return true;
        } else {
            die("Error en la ejecución del query: " . print_r($this->_db->error, true));
        }
    }
    
    public function editUdateUsuario($idusuario,$pwd,$rol){
        $update = "UPDATE usuario SET pwd = '$pwd' , rol = '$rol'  WHERE idusuario = $idusuario";
        
        $sql =  $update;
        $result = $this->_db->query($sql);
        if ($result) {            
            return true;
        } else {
            die("Error en la ejecución del query: " . print_r($this->_db->error, true));
        }
    }
}
?>
