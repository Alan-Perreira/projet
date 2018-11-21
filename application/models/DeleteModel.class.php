<?php
class DeleteModel {

  public function deleteCom($a) {
    $user = new Database();


    $sql = 'DELETE FROM userAvis WHERE Id= ?';

    $value = [$a];

    $user->executeSql($sql, $value);
  }




}



 ?>
