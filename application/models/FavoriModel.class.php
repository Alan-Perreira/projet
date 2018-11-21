<?php
class FavoriModel {

  public function findFav($a)
  {
    $database = new Database();

    $sql = 'SELECT * FROM `favorie`
    WHERE user_Id= ?';

    $value = [$a];

    return $database->query($sql, $value);
  }

  public function saveFav($a, $b, $c) {
    $user = new Database();

    $sql2 = 'SELECT * FROM `favorie`
    WHERE user_Id= ? AND name=?';

    $value2 = [$a, $b];

    $test = $user->queryOne($sql2, $value2);

    if ($test != false) {
      return;
    }



    $sql = 'INSERT INTO `favorie` (`user_Id`, `name`, `resume`) VALUES (?,?,?)';

    $value = [$a, $b, $c];


    $user->executeSql($sql, $value);
  }






}
 ?>
