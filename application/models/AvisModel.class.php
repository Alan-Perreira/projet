<?php
class AvisModel {


public function find($mangasId)
{
    $database = new Database();

    $sql = 'SELECT
                *
            FROM mangas
            WHERE Id = ?';

    // Récupération du produit alimentaire spécifié.
    return $database->query($sql, [ $mangasId ]);
}
public function saveCom($a, $b, $c) {
  $user = new Database();

  $sql = 'INSERT INTO userAvis (`user_Id`, `avis`, `mangas_Id`) VALUES (?,?,?)';

  $value = [$a, $b, $c];

  $user->executeSql($sql, $value);
}

public function comment()
{
    $database = new Database();

    $sql = 'SELECT
                *
            FROM userAvis';


    return $database->query($sql);
}




}




 ?>
