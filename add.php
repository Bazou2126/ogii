<?php 

	include 'database.php';
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
	

	$link->query("INSERT INTO person(prenom,nom,prenomPere,prenomMere, nomMere,neLe,ville,profession,domicile,taille,teint,cheveux,signesParticuliers)VALUES('".$prenom."','".$nom."','".$prenomPere."','".$prenomMere."','".$nomMere."','".$neLe."','".$ville."','".$profession."','".$domicile."','".$taille."','".$teint."','".$cheveux."','".$signesParticuliers."')");
