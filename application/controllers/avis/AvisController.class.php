<?php
class AvisController {

  public function httpGetMethod(Http $http, array $queryFields) {

     $avisModel = new AvisModel();

     $avis = $avisModel->find($_GET['id']);

     return [ 'avis' => $avis ];
  }
  public function httpPostMethod(Http $http, array $formFields)
  {
    if(empty($_POST) == false) {
      $users = new AvisModel();
      $users->saveCom($_SESSION['user']['Id'], $_POST['contents'], $_GET['id']);

      var_dump($_POST);
      $http->redirectTo('/avis?id='.$_GET['id']);
    }


  }
}









 ?>
