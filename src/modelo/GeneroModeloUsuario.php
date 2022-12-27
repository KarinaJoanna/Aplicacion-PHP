<?php

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Scripting/PHPClass.php to edit this template
 */

/**
 * Description of Genero
 *
 * @author Yeoshua
 */
class GeneroModeloUsuario {
    
    //put your code here
    private $idusuario;
    private $nombre;
    private $apellido;
    private $login;
    private $pwd;
    private $rol;
    
    
    public function getId() {
        return $this->idusuario;
    }

    public function getNombre() {
        return $this->nombre;
    }

    public function getApellido() {
        return $this->apellido;
    }
    
     public function getLogin() {
        return $this->login;
    }

    public function getPwd() {
        return $this->pwd;
    }

    public function getRol() {
        return $this->rol;
    }
    
    public function setId($idusuario): void {
        $this->idusuario = $idusuario;
    }

    public function setNombre($nombre): void {
        $this->nombre = $nombre;
    }

    public function setApellido($apellido): void {
        $this->apellido = $this->apellido;
    }
    
    public function setLogin($login): void {
        $this->login = $login;
    }

    public function setPwd($pwd): void {
        $this->pwd = $pwd;
    }

    public function setRol($rol): void {
        $this->rol = $rol;
    }


}