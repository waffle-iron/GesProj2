<!--
Auteur : Romain Dormond et Nevin Constantin
Date : 10.03.2017
Summary : Page d'accueil du site La foire aux recettes
-->
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Accueil - la foire aux recettes</title>

        <!-- Bootstrap Core CSS -->
        <link href="../../ressources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="../../ressources/css/modern-business.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="../../ressources/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <!-- Navigation -->
        <?php include('../html/header.html'); ?>

        <!-- Header Carousel -->
        <header id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <div class="fill" style="background-image:url('../../ressources/images/rose.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Rose bleue</h2>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('../../ressources/images/hiver.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Flocon de neige</h2>
                    </div>
                </div>
                <div class="item">
                    <div class="fill" style="background-image:url('../../ressources/images/forêt.jpg');"></div>
                    <div class="carousel-caption">
                        <h2>Chemin dans la fôret</h2>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="icon-prev"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="icon-next"></span>
            </a>
        </header>
        <!-- Page Content -->
        <div class="container">

            <!-- Marketing Icons Section -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Bienvenue sur notre site
                    </h1>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 style="text-align: center">Présentation du site</h4>
                        </div>
                        <div class="panel-body">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem urna, aliquet mollis ex vel, sollicitudin fringilla erat. Quisque nec ipsum in tortor dapibus mattis. Sed vel pulvinar lectus. Duis vitae auctor lacus. Sed eu mi non nunc ultricies ornare. Proin dignissim varius dapibus. Mauris efficitur ullamcorper velit, et tincidunt ante suscipit non. Integer ut enim quam. Integer non ornare dolor. Vestibulum a elit nisi. Nunc dapibus, augue vel aliquet mattis, augue libero maximus neque, non ullamcorper quam nulla at neque. Vestibulum at risus vitae massa tempus viverra non vitae dui.
                            </p>
                            <ul>
                                <li>
                                    Fusce magna purus, luctus sit amet tortor eu, varius mollis quam. Quisque sollicitudin ut ipsum in finibus. Duis auctor mi at nisl rutrum, ut tristique eros aliquam. Donec vitae metus vel felis malesuada faucibus a eget nisi. Fusce id laoreet eros, a euismod odio. In hac habitasse platea dictumst. Etiam eu nulla dictum, commodo massa non, faucibus quam.
                                </li>
                                <li>
                                Aenean auctor turpis a sem vehicula, in elementum arcu porttitor. Duis elit lacus, tincidunt et turpis et, lacinia faucibus libero. Aliquam faucibus ex sed nisi pellentesque semper. Fusce porta non odio a euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis rutrum nulla, a cursus magna. Aliquam fermentum a lectus eu mollis. Cras dolor est, rhoncus nec interdum sed, convallis sit amet massa. Nunc enim tellus, feugiat vel nisl sed, euismod tincidunt ipsum. Fusce non laoreet est. Morbi a mauris eu velit volutpat laoreet. In convallis commodo faucibus.
                                </li>
                                <li>
                                Proin eget est eget neque scelerisque mattis sed rutrum massa. Etiam lobortis quam ac nunc pharetra faucibus. Duis laoreet ante lorem, aliquet congue mauris dictum quis. Phasellus rutrum risus eget leo sollicitudin egestas. Nullam rutrum diam in sapien elementum gravida sit amet in metus. Aliquam erat volutpat. Sed lorem est, viverra id lorem et, consectetur aliquam libero. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin condimentum tincidunt accumsan. Sed pretium quis lectus ac hendrerit. Proin vehicula neque eros, dignissim gravida erat auctor quis. Nunc ac semper risus.
                                </li>
                                <li>
                                Etiam nibh odio, condimentum vestibulum felis a, aliquam porta massa. Sed pellentesque accumsan tellus nec laoreet. Ut sollicitudin quis arcu in interdum. Cras in mollis eros, finibus luctus justo. Aenean volutpat vestibulum justo at posuere. Sed eget quam lacinia, lacinia orci eu, venenatis ante. Sed vitae quam sollicitudin, malesuada urna feugiat, imperdiet lorem. Praesent sodales sed purus vel accumsan. Nulla facilisi. Pellentesque consequat lorem luctus lectus consectetur mattis. Donec egestas ultricies tellus. Nam convallis nisl nec nulla feugiat dapibus. Phasellus imperdiet ultrices arcu, et blandit leo suscipit eget.
                                </li>
                            </ul>
                            <p>
                                Quisque volutpat nisl efficitur congue cursus. Sed efficitur, nibh in feugiat suscipit, diam nisi pharetra diam, quis consequat libero sapien id diam. Sed cursus purus in malesuada maximus. Suspendisse varius nunc quis risus vehicula, ac interdum mauris dignissim. Fusce hendrerit viverra condimentum. Fusce blandit, massa vitae vehicula egestas, diam lacus gravida libero, eu gravida dui ante sed turpis. Morbi mollis nibh nec erat consequat, et dictum tellus pellentesque. Pellentesque sit amet ullamcorper ex. Morbi pretium felis egestas orci lobortis, et pellentesque est finibus. Nunc iaculis sed diam ut laoreet. Duis mollis neque sed magna eleifend, ac iaculis libero tristique.
                            </p>
                            <ul>
                                <li>
                                    Nunc at nunc metus. Morbi sit amet sapien eget risus vulputate pretium quis et dui. Phasellus pellentesque sollicitudin rutrum. Proin leo purus, malesuada ac vestibulum sed, pharetra id eros. In hac habitasse platea dictumst. Suspendisse ornare lobortis ex, ac semper eros elementum vel. Phasellus consequat blandit tellus at sodales. Sed hendrerit ipsum rhoncus justo tincidunt ultrices. Aenean ut egestas nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                </li>
                                <li>
                                    Praesent auctor, erat sit amet pellentesque fringilla, ex erat lobortis augue, vel scelerisque libero odio nec lectus. Vivamus ullamcorper sagittis purus quis tincidunt. Integer quis placerat est. Mauris laoreet vulputate nisi. Sed laoreet eget purus bibendum semper. Sed sed nunc ac quam efficitur sollicitudin ac cursus neque. Nam maximus, elit venenatis aliquam molestie, ipsum magna efficitur magna, id fermentum enim sem ac ligula.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <!-- Features Section -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Lorem Ipsum</h2>
                </div>
                <div class="col-md-6">
                    <h4>Lorem Ipsum</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a justo et nulla auctor finibus. Praesent id ultrices ante. Nam justo lacus, imperdiet ut lorem ut, venenatis suscipit elit. Nam efficitur volutpat mauris ut suscipit. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed at sapien vitae metus pretium interdum nec vel tellus. Maecenas iaculis aliquet nunc, ut ultricies augue dignissim at. Integer iaculis molestie porttitor. Sed vitae massa nunc. Sed non consectetur diam. Praesent auctor, est et consequat venenatis, mauris dui pharetra elit, eu porttitor quam nulla efficitur ante.</p>
                </div>
                <div class="col-md-6">
                    <img class="img-responsive" src="../../ressources/images/espace.jpg" alt="espace">
                </div>
            </div>
            <!-- /.row -->

            <!-- Footer -->
            <?php include('../html/footer.html'); ?>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="../js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="../js/bootstrap.min.js"></script>
    </body>
</html>
