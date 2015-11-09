<?php
header("Content-type:text/html;Charset=utf8");
if ($_POST) {
    $dosya_boyutu = $_FILES["resim"]["size"];
    $dosya_uzantisi = substr($_FILES["resim"]["name"], -4, 4);
    $maxDosyaBoyutu = 5000000;
    $dosya_adi = 'resim' . rand(0, 999999) . $dosya_uzantisi;
    $dosya_yolu = "resim/" . $dosya_adi;

    if ($dosya_uzantisi == ".jpg" || $dosya_uzantisi == ".png" || $dosya_uzantisi == ".gif") {
        if ($dosya_boyutu > $maxDosyaBoyutu) {
            echo "<div class='hata'>En fazla 5MB dosya yükleyebilirsiniz!</div>";
        } else {
            if (is_uploaded_file($_FILES["resim"]["tmp_name"])) {

                if (move_uploaded_file($_FILES["resim"]["tmp_name"], $dosya_yolu)) {
                    echo "<div class='tamam'>Resim Yüklendi</div>";
                } else {
                    echo "<div class='hata'>Dosya yüklenirken hata oluştu! Lütfen tekrar deneyin.</div>";
                }
            } else {
                echo "<div class='hata'>Dosya yüklenirken hata oluştu!</div>";
            }
        }
    } else {
        echo "<div class='hata'>Sadece GIF,JPG ve PNG uzantılı dosyaları yükleyebilirsiniz!</div>";
    }
}