<?php

class AdminController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP GET
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $queryFields contient l'équivalent de $_GET en PHP natif.
    	 */
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
      if(empty($_POST) == false) {
        $users = new AdminModel();
        $users->saveMangas($_POST['nom'], $_POST['resume'], $_POST['date'], $_POST['img'],
        $_SESSION['user']['Id']);

        var_dump($_POST);

      }
    }
}
