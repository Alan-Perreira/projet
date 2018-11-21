<?php
class RegisterModel {

  public function hashPassword($password) {
    $salt = '$2y$11$'.substr(bin2hex(openssl_random_pseudo_bytes(32)), 0, 22);

    return crypt($password, $salt);
  }


  public function saveUser($a, $b, $c, $d) {
    $user = new Database();
    $dash = $this->hashPassword($d);

    $sql2 = 'SELECT * FROM user WHERE Mail= ?';

    $criteria2 = [$c];

    $user2 = $user->queryOne($sql2, $criteria2);

    if ($user2 != false) {
      return;
    }

    $sql = 'INSERT INTO user (FirstName, LastName, Mail, Password) VALUES (?,?,?,?)';

    $value = [$a, $b, $c, $dash];

    $user->executeSql($sql, $value);
  }

  public function verifyPassword($password, $hashedPassword) {
    return crypt($password, $hashedPassword) == $hashedPassword;
  }

  public function log($mail){
    $co = new Database();

    $sql = 'SELECT * FROM user WHERE Mail= ?';

    $criteria = [$mail];

    $user = $co->queryOne($sql, $criteria);

    return $user;
  }


  public function verif($postpass, $user){

      if($this->verifyPassword($postpass, $user['Password']) && $user != null) {
        $_SESSION['user']['Id']= $user['Id'];

        $_SESSION['user']['FirstName'] = $user['FirstName'];

        $_SESSION['user']['LastName'] = $user['LastName'];

        $_SESSION['user']['Mail'] = $user['Mail'];

        $http= new Http();
           $http->redirectTo('/');


      } else {

        echo 'mdp incorrect';
      }

    }


}
 ?>
