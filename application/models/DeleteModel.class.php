<?php
class DeleteModel {

  public function deleteCom($a) {
    $user = new Database();


    $sql = 'DELETE FROM userAvis WHERE Id= ?';

    $value = [$a];

    $user->executeSql($sql, $value);
  }

  public function deleteMan($a) {
    $user = new Database();


    $sql = 'DELETE FROM mangas WHERE Id= ?';

    $value = [$a];

    $user->executeSql($sql, $value);
  }




}



 ?>
