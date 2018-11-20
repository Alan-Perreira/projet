<?php

class CommentController
{
    public function httpGetMethod(Http $http, array $queryFields)
    {
      $commentModel = new CommentModel();

      $com = $commentModel->comment($_GET['id']);

      return [ 'com' => $com ];
    }

    public function httpPostMethod(Http $http, array $formFields)
    {
      if(empty($_POST) == false) {

      }
    }
}
