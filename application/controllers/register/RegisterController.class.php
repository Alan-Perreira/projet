<?php
class RegisterController {

  public function httpGetMethod(Http $http, array $queryFields) {




  }
  public function httpPostMethod(Http $http, array $formFields)
  {
        if(empty($_POST) == false) {
          $users = new RegisterModel();
          $users->saveUser($_POST['firstName'], $_POST['lastName'], $_POST['email'], $_POST['password']);

          $http = new Http();
          $http->redirectTo('/user/login');

  }
}

}








 ?>
