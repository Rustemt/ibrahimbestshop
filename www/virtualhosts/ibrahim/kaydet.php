<?php


include "config.php";

extract($_POST);

$query = $db->prepare('INSERT INTO users (adsoyad,kulad,email,sifre,aciklama) VALUES(?,?,?,?,?)');

$query->execute(array($adsoyad, $kulad, $email, $sifre, $aciklama));