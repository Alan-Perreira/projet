<?php

class AjouController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
    	$favor = new FavoriModel();
      $result = $favor->saveFav($_GET['id'], $_GET['name'], $_GET['resume']);

      $http= new Http();
         $http->redirectTo('/');
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
    	/*
    	 * Méthode appelée en cas de requête HTTP POST
    	 *
    	 * L'argument $http est un objet permettant de faire des redirections etc.
    	 * L'argument $formFields contient l'équivalent de $_POST en PHP natif.
    	 */
    }
}
