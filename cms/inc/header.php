<!DOCTYPE html>
<html lang="pt-br">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Loja Virtual</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">



  <!-- Custom styles for this template -->
  <link href="/your-path-to-fontawesome/css/all.css" rel="stylesheet"> <!--load all styles -->
 <link href="/your-path-to-fontawesome/css/fontawesome.css" rel="stylesheet">
  <link href="/your-path-to-fontawesome/css/brands.css" rel="stylesheet">
  <link href="/your-path-to-fontawesome/css/solid.css" rel="stylesheet">
  <style>
   .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
  .bg-1{
	  background-color: black;
  }

  .bg-2{
	  
	   height: 200px;
	  
  } 
  
    .bg-3{
	  
	  background-color: black;
	  
  } 
  </style>

</head>
<body>

<header>
<div class="row bg-3 text-center">
<div class="col-4">
1
</div>
<div class="col-4">
2
</div>
<div class="col-4">
3
</div>
</div>
<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>My First Bootstrap 4 Page</h1>
  <p>Resize this responsive page to see the effect!</p> 
</div>



            <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">

		
			                   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarText">
                      <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                          <a class="nav-link" href="index.php"><i class="fas fa-home"></i></a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="catps.php"><i class="fab fa-playstation"></i>Playstation</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="catx.php"><i class="fab fa-xbox"></i>Xbox</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="catn.php"><i class="fas fa-gamepad"></i>Nintendo</a>
                        </li>
						<li class="nav-item">
                        <a class="nav-link" href="minhaconta.php">Minha Conta</a> 
                      </li>
                      </ul>
 
  <ul class="nav navbar-nav navbar-right">
        <li><a href="login.php" class="logar">Login</a></li>
        <li><a href="/account/register" class="register">Cadastre-se</a></li>

				<li class="dropdown ">
					<a class="cartCount" href="/cart" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-shopping-cart"></i> <span class="badge">0</span> <span class="caret"></span></a>     
					<ul class="cart-dropdown dropdown-menu" role="menu">
						<li class="divider"></li>
						<li class="cart-btns text-center">
							<a href="/cart" class="btn btn-primary ajax-cart-btn ajax-cart-view-btn">View Cart</a><a href="/checkout" class="btn btn-main ajax-cart-btn ajax-cart-checkout-btn">Checkout</a>
						</li>
					</ul>
				</li> 
				</div>
                 </nav>
</header>