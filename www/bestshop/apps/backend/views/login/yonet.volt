<!DOCTYPE html>
<html lang="en">
<head><title>Shopping Dashboard | Dashboard</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="images/icons/favicon.ico" rel="shortcut icon">
    <!--Loading bootstrap css-->
    {{stylesheet_link("http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,800italic,400,700,800")}}
    {{stylesheet_link("http://fonts.googleapis.com/css?family=Oswald:400,700,300")}}
    {{stylesheet_link("assets/odin/vendors/jquery-ui-1.10.3.custom/css/ui-lightness/jquery-ui-1.10.3.custom.css")}}
    {{stylesheet_link("assets/odin/vendors/font-awesome/css/font-awesome.min.css")}}
    {{stylesheet_link("assets/odin/vendors/bootstrap/css/bootstrap.min.css")}}
    <!--LOADING SCRIPTS FOR PAGE--><!--Loading style vendors-->
    {{stylesheet_link("assets/odin/vendors/animate.css/animate.css")}}
    {{stylesheet_link("assets/odin/vendors/jquery-pace/pace.css")}}
    <!--Loading style-->
    {{stylesheet_link("assets/odin/css/style.css")}}
    {{stylesheet_link("assets/odin/css/style-mango.css")}}
    {{stylesheet_link("assets/odin/css/themes/grey.css")}}
    {{stylesheet_link("assets/odin/css/style-responsive.css")}}
    {{stylesheet_link("assets/odin/images/favicon.ico")}}
    {{stylesheet_link("assets/odin/css/vendors.css")}}
    {{stylesheet_link("assets/odin/vendors/bootstrap-switch/css/bootstrap-switch.css")}}
    {{stylesheet_link("assets/odin/css/custom.css")}}

<body id="signin-page" class="bounceInDown animated">
<div id="signin-page-content">
    <form action="/admin/yonet/ozet" class="form"><h1 class="block-heading">Giriş Yap</h1>

        <p>Yönetici paneline erişmek için lütfen giriş yapın.</p>

        <div class="form-group">
            <div class="input-icon"><i class="fa fa-user"></i><input type="text" placeholder="Eposta" name="email" class="form-control"></div>
        </div>
        <div class="form-group">
            <div class="input-icon"><i class="fa fa-key"></i><input type="password" placeholder="Sifre" name="password" class="form-control"></div>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Giriş
                &nbsp;<i class="fa fa-chevron-circle-right"></i></button>
        </div>
    
    </form>
</div>
</body>
</html>