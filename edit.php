<?php 

include 'database.php';
    $id = $_POST['id'];
	$prenom = $_POST['prenom'];
	$nom = $_POST['nom'];
    $prenomPere = $_POST['prenomPere'];
    $prenomMere = $_POST['prenomMere'];
    $nomMere = $_POST['nomMere'];
	$neLe = $_POST['neLe'];
	$ville = $_POST['ville'];
	$profession = $_POST['profession'];
    $domicile = $_POST['domicile'];
    $taille = $_POST['taille'];
    $teint = $_POST['teint'];
    $cheveux = $_POST['cheveux'];
    $signesParticuliers = $_POST['signesParticuliers'];


	

	$link->query("UPDATE person SET prenom = '".$prenom."',nom = '".$nom."',prenomPere='".$prenomPere."',prenomMere='".$prenomMere."', nomMere='".$nomMere."',neLe = '".$neLe."',ville='".$ville."', profession = '".$profession."',domicile = '".$domicile."',taille= '".$taille."',teint = '".$teint."',cheveux = '".$cheveux."',signesParticuliers = '".$signesParticuliers."' WHERE id = '".$id."'");
?>