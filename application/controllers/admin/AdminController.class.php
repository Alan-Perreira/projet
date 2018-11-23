<?php

class AdminController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
      $mangas = new AdminModel();
      $man = $mangas->find();

      return [ 'man' => $man ];
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
      if(empty($_POST) == false) {
        $users = new AdminModel();
        $users->saveMangas($_POST['nom'], $_POST['resume'], $_POST['date'], $_POST['img'],
        $_SESSION['user']['Id']);

        var_dump($_POST);
        $http->redirectTo('/admin');
      }
    }
}
