<?php
class AdminModel {

  public function saveMangas($a, $b, $c, $d, $e) {
    $user = new Database();

    $sql = 'INSERT INTO mangas (`name`, `resume`, `date`, `img`, `user_id`) VALUES (?,?,?,?,?)';

    $value = [$a, $b, $c, $d, $e];

    $user->executeSql($sql, $value);
  }


  public function find()
  {
      $database = new Database();

      $sql = 'SELECT
                  *
              FROM mangas';


      return $database->query($sql);
  }




}
 ?>
