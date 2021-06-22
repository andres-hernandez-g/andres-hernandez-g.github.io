<?php
include ("conexion.php");

class User {

    private $nombre;
    private $username;

    public function userExists($user, $pass){
        include ("conexion.php");
        $md5pass = md5($pass);

       // $conexion->query("SELECT * FROM consultor WHERE username = :user AND password = :pass");
/*
       $sql = $conexion->query("SELECT * FROM consultor WHERE id_cons = 1");
       $sql_res = $sql->fetch_assoc();
       $nombre = $sql_res['nombre_cons'];
       echo $nombre;
*/
        $query = $conexion->prepare("SELECT * FROM consultor WHERE email_cons = :user AND password = :pass");
        /*$query->execute(['user' => $user, 'pass' => $md5pass]);

        if($query->rowCount()){
            return true;
        } else{
            return false;
        }*/
    }

    public function setUser($user){
        $query = $conexion->prepare("SELECT * FROM consultor WHERE nombre_cons = :user");
        $query->execute(['user' => $user]);

        foreach($query as $currentUser){
            $this->nombre = $currentUser['nombre'];
            $this->username = $currentUser['username'];
        }
    }

    public function getNombre(){
        return $this->nombre;
    } 
}

?>