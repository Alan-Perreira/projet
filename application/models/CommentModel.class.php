<?php
class CommentModel {

public function comment($id)
{
    $database = new Database();

    $sql = 'SELECT userAvis.Id, user_Id, avis, mangas_Id, FirstName, LastName FROM userAvis INNER JOIN user ON userAvis.user_Id = user.Id WHERE userAvis.mangas_Id = ?';

            $criteria = [$id];

    return $database->query($sql,$criteria);
}




}




 ?>
