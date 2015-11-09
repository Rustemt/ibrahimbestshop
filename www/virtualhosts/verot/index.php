<!DOCTYPE html >
<html lang="tr">
<head>
	<title></title>
	<meta charset="UTF-8">
</head>
<body>	
	<form action="test.php" method="post"  enctype="multipart/form-data">
		<table>
		  <tr>
            <td>Kullanıcı Adı :</td>
            <td><input type="text" name="kulad" placeholder="Kullanıcı adı"/></td>
        </tr>
        <tr>
            <td>Şifre :</td>
            <td><input type="text" name="sifre" placeholder="Şifre"/></td>
        </tr>
        <tr>
            <td>Email :</td>
            <td><input type="text" name="email" placeholder="Email"/></td>
        </tr>
        <tr>
            <td>Yüklenecek Resim :</td>
            <td><input type="file" name="resim" /></td>
        </tr>
        <tr>
            <td><input type="submit" value="Gönder"/></td>
        </tr>
		</table>
	</form>
</body>
</html>