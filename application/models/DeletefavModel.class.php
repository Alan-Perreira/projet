<?php
class DeletefavModel {

  public function deleteFav($a) {
    $user = new Database();


    $sql = 'DELETE FROM `favorie` WHERE Id= ?';

    $value = [$a];

    $user->executeSql($sql, $value);
  }




}



 ?>
