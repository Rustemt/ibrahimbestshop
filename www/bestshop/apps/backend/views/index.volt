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
    {{stylesheet_link("assets/css/ekle.css")}}
    {{stylesheet_link("assets/css/editor.css")}}
    {{stylesheet_link("assets/css/urunekle.css")}}
</head>
<body>
<div>
<!--BEGIN TO TOP--><a id="totop" href="#"><i class="fa fa-angle-up"></i></a><!--END BACK TO TOP-->
    <div id="wrapper"><!--BEGIN TOPBAR-->
        <nav id="topbar" role="navigation" style="margin-bottom: 0;" class="navbar navbar-default navbar-static-top">
            <div class="navbar-header">
                <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <a id="logo" href="index.html" class="navbar-brand"><span class="fa fa-rocket"></span><span class="logo-text">Odin</span></a></div>
            <div class="topbar-main"><a id="menu-toggle" href="#" class="btn hidden-xs"><i class="fa fa-bars"></i></a>

                <form id="topbar-search" action="" method="" class="hidden-sm hidden-xs">
                    <div class="input-icon right"><a href="#"><i class="fa fa-search"></i></a><input type="text" placeholder="Search here..." class="form-control"/></div>
                </form>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown"><a data-toggle="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-bell fa-fw"></i><span class="badge badge-yellow">3</span></a>
                        <ul class="dropdown-menu dropdown-alerts animated bounceInDown">
                            <li><a href="#"><span class="label label-blue"><i class="fa fa-comment fa-fw"></i></span>New Comment<span class="pull-right text-muted small">4 minutes ago</span></a></li>
                            <li><a href="#"><span class="label label-violet"><i class="fa fa-twitter fa-fw"></i></span>3 New Followers<span class="pull-right text-muted small">12 minutes ago</span></a></li>
                            <li><a href="#"><span class="label label-pink"><i class="fa fa-envelope fa-fw"></i></span>Message Sent<span class="pull-right text-muted small">15 minutes ago</span></a></li>
                            <li><a href="#"><span class="label label-green"><i class="fa fa-tasks fa-fw"></i></span>New Task<span class="pull-right text-muted small">18 minutes ago</span></a></li>
                            <li><a href="#"><span class="label label-yellow"><i class="fa fa-upload fa-fw"></i></span>Server Rebooted<span class="pull-right text-muted small">19 minutes ago</span></a></li>
                            <li><a href="#" class="text-right">See all alerts</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a data-toggle="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-envelope fa-fw"></i><span class="badge badge-green">7</span></a>
                        <ul class="dropdown-menu dropdown-messages animated bounceInUp">
                            <li><a href="#"><span class="avatar"><img src="http://lorempixel.com/128/128/people/9/" alt="" class="img-responsive img-circle"/></span><span class="info"><span class="name">Jessica Spencer</span><span class="desc">Lorem ipsum dolor sit amet...</span></span></a></li>
                            <li><a href="#"><span class="avatar"><img src="http://lorempixel.com/128/128/people/9/" alt="" class="img-responsive img-circle"/></span><span class="info"><span class="name">John Smith<span class="label label-blue pull-right">New</span></span><span class="desc">Lorem ipsum dolor sit amet...</span></span></a></li>
                            <li><a href="#"><span class="avatar"><img src="http://lorempixel.com/128/128/people/9/" alt="" class="img-responsive img-circle"/></span><span class="info"><span class="name">John Doe<span class="label label-orange pull-right">10 min</span></span><span class="desc">Lorem ipsum dolor sit amet...</span></span></a></li>
                            <li><a href="#"><span class="avatar"><img src="http://lorempixel.com/128/128/people/9/" alt="" class="img-responsive img-circle"/></span><span class="info"><span class="name">John Smith</span><span class="desc">Lorem ipsum dolor sit amet...</span></span></a></li>
                            <li><a href="#">Read all messages</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a data-toggle="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-tasks fa-fw"></i><span class="badge badge-blue">8</span></a>
                        <ul class="dropdown-menu dropdown-tasks animated bounceInDown">
                            <li><a href="#"><span class="task-item">Fix the HTML code<small class="pull-right text-muted">40% Complete</small></span>

                                <div class="progress progress-sm">
                                    <div role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;" class="progress-bar progress-bar-orange"><span class="sr-only">40% Complete (success)</span></div>
                                </div>
                            </a></li>
                            <li><a href="#"><span class="task-item">Make a wordpress theme<small class="pull-right text-muted">60% Complete</small></span>

                                <div class="progress progress-sm">
                                    <div role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" class="progress-bar progress-bar-blue"><span class="sr-only">60% Complete (success)</span></div>
                                </div>
                            </a></li>
                            <li><a href="#"><span class="task-item">Convert PSD to HTML<small class="pull-right text-muted">55% Complete</small></span>

                                <div class="progress progress-sm">
                                    <div role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%;" class="progress-bar progress-bar-green"><span class="sr-only">55% Complete (success)</span></div>
                                </div>
                            </a></li>
                            <li><a href="#"><span class="task-item">Convert HTML to Wordpress<small class="pull-right text-muted">78% Complete</small></span>

                                <div class="progress progress-sm">
                                    <div role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%;" class="progress-bar progress-bar-yellow"><span class="sr-only">78% Complete (success)</span></div>
                                </div>
                            </a></li>
                            <li><a href="#">See all tasks</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a data-toggle="dropdown" href="#" class="dropdown-toggle"><img src="http://lorempixel.com/128/128/people/9/" alt="" class="img-responsive img-circle"/>&nbsp;
                        Jessica
                        &nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-user pull-right animated bounceInLeft">
                            <li>
                                <div class="navbar-content">
                                    <div class="row">
                                        <div class="col-md-5 col-xs-5"><img src="http://lorempixel.com/128/128/people/9/" alt="" class="img-responsive img-circle"/>

                                            <p class="text-center mtm"><a href="#" class="change-avatar">
                                                <small>Change Avatar</small>
                                            </a></p>
                                        </div>
                                        <div class="col-md-7 col-xs-5"><span>Jessica</span>

                                            <p class="text-muted small">example@mail.com</p>

                                            <div class="divider"></div>
                                            <a href="#" class="btn btn-primary btn-sm">View Profile</a></div>
                                    </div>
                                </div>
                                <div class="navbar-footer">
                                    <div class="navbar-footer-content">
                                        <div class="row">
                                            <div class="col-md-6 col-xs-6"><a href="#" class="btn btn-default btn-sm">Change Password</a></div>
                                            <div class="col-md-6 col-xs-6"><a href="page-lock-screen.html" class="btn btn-default btn-sm pull-right">Sign Out</a></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <!--BEGIN MODAL CONFIG PORTLET-->
        <div id="modal-config" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
                        <h4 class="modal-title">Modal title</h4></div>
                    <div class="modal-body"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend et nisl eget porta. Curabitur elementum sem molestie nisl varius, eget tempus odio molestie. Nunc vehicula sem arcu, eu pulvinar neque cursus ac. Aliquam ultricies lobortis magna et aliquam. Vestibulum egestas eu urna sed ultricies. Nullam pulvinar dolor vitae quam dictum
                        condimentum. Integer a sodales elit, eu pulvinar leo. Nunc nec aliquam nisi, a mollis neque. Ut vel felis quis tellus hendrerit placerat. Vivamus vel nisl non magna feugiat dignissim sed ut nibh. Nulla elementum, est a pretium hendrerit, arcu risus luctus augue, mattis aliquet orci ligula eget massa. Sed ut ultricies felis.</p></div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-default">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!--END MODAL CONFIG PORTLET--><!--END TOPBAR--><!--BEGIN SIDEBAR MENU-->
        <nav id="sidebar" role="navigation" class="navbar-default navbar-static-side">
            <div class="sidebar-collapse menu-scroll">
                <ul id="side-menu" class="nav">
                    <li class="clock"><strong id="get-date"></strong>

                        <div class="digital-clock">
                            <div id="getHours" class="get-time"></div>
                            <span>:</span>

                            <div id="getMinutes" class="get-time"></div>
                            <span>:</span>

                            <div id="getSeconds" class="get-time"></div>
                        </div>
                    </li>

                    <!-- Kategori başlangıç -->
                        <li><a href="index.html"><i class="fa fa-bars fa-fw"></i><span class="menu-title">Kategoriler</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="/admin/kategori/ekle">Kategori ekle</a></li>
                        </ul>
                    </li>
                    <!-- Kategori Sonu -->
                    <!-- Ürünler başlangıç -->
                        <li><a href="index.html"><i class="fa fa-barcode fa-fw"></i><span class="menu-title">Ürünler</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
							<li><a href="/admin/urun/urunler">Ürün Listele</a></li>
                            <li><a href="/admin/urun/ekle">Ürün Ekle</a></li>
                            <li><a href="/admin/urun/duzenle">Ürün Güncelleme & Silme</a></li>
                        </ul>
                    </li>
                    <!-- Ürünler Son -->
                    <!--üyeler-->

                    <li><a href="index.html"><i class="fa fa-barcode fa-fw"></i><span class="menu-title">Kullanıcılar</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="/admin/uye/uyeler">Kullanıcılar</a></li>
                            <li><a href="/admin/uye/uyeislem">Kullanıcı Düzenle</a></li>
                        </ul>
                    </li>


                </ul>
            </div>
        </nav>
        <!--END SIDEBAR MENU--><!--BEGIN PAGE WRAPPER-->
        <div id="page-wrapper"><!--BEGIN PAGE HEADER & BREADCRUMB-->
            <div class="page-header-breadcrumb">
                <div class="page-heading hidden-xs"><h1 class="page-title">Page Blank</h1></div>
                <ol class="breadcrumb page-breadcrumb">
                    <li><i class="fa fa-home"></i>&nbsp;<a href="index.html">Home</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li><a href="#">Pages</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                    <li class="active">Page Blank</li>
                </ol>
            </div>
            <!--END PAGE HEADER & BREADCRUMB--><!--BEGIN CONTENT-->
            <div class="page-content">

            {{content()}}

            </div>
            <!--END CONTENT--><!--BEGIN FOOTER-->
            <div class="page-footer">
                <div class="copyright">2014 © Odin - The Ultimate Responsive Admin Template.</div>
            </div>
            <!--END FOOTER--></div>
        <!--END PAGE WRAPPER--></div>
</div>

{{ javascript_include("assets/odin/js/jquery-1.9.1.js") }}
{{ javascript_include("assets/odin/js/jquery-migrate-1.2.1.min.js") }}
{{ javascript_include("assets/odin/js/jquery-ui.js") }}
<!--loading bootstrap js-->
{{ javascript_include("assets/odin/vendors/bootstrap/js/bootstrap.min.js") }}
{{ javascript_include("assets/odin/vendors/bootstrap-hover-dropdown/bootstrap-hover-dropdown.js") }}
{{ javascript_include("assets/odin/js/html5shiv.js") }}
{{ javascript_include("assets/odin/js/respond.min.js") }}

{{ javascript_include("assets/odin/vendors/metisMenu/jquery.metisMenu.js") }}
{{ javascript_include("assets/odin/vendors/slimScroll/jquery.slimscroll.js") }}
{{ javascript_include("assets/odin/vendors/jquery-cookie/jquery.cookie.js") }}
{{ javascript_include("assets/odin/js/jquery.menu.js") }}
{{ javascript_include("assets/odin/vendors/jquery-pace/pace.min.js") }}
<!--LOADING SCRIPTS FOR PAGE-->
<!--  {{ javascript_include("assets/odin/vendors/jquery-knob/jquery.knob.js") }}
{{ javascript_include("assets/odin/vendors/jquery-animateNumber/jquery.animateNumber.min.js") }}
{{ javascript_include("assets/odin/vendors/flot-chart/jquery.flot.js") }}
{{ javascript_include("assets/odin/vendors/flot-chart/jquery.flot.categories.js") }}
{{ javascript_include("assets/odin/vendors/flot-chart/jquery.flot.pie.js") }}
{{ javascript_include("assets/odin/vendors/flot-chart/jquery.flot.tooltip.js ") }}
{{ javascript_include("assets/odin/vendors/flot-chart/jquery.flot.resize.js ") }}
{{ javascript_include("assets/odin/vendors/flot-chart/jquery.flot.fillbetween.js ") }}
{{ javascript_include("assets/odin/vendors/flot-chart/jquery.flot.stack.js") }}
{{ javascript_include("assets/odin/vendors/flot-chart/jquery.flot.spline.js ") }}
{{ javascript_include("assets/odin/js/dashboard-shopping.js ") }} -->
{{javascript_include("assets/odin/vendors/bootstrap-switch/js/bootstrap-switch.min.js")}}
<!--CORE JAVASCRIPT-->
{{ javascript_include("assets/odin/js/main.js ") }}
{{ javascript_include("assets/odin/js/holder.js ") }}
{{ assets.outputJs() }}

</body>
