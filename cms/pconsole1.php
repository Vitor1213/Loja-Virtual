<?php require_once('inc/header.php'); ?>

  <!-- Page Content -->
  <div class="container">
  	
	  <hr>
	
    <div class="row">

      <div class="col-lg-2">
	  			  <h5>Categorias</h5>
	  <hr>
        <a href="catps.php"><h4 class="my-4">Playstation</h4></a>
        <div class="list-group">
          <a href="consoleps.php" class="list-group-item">Consoles</a>
          <a href="jogosps.php" class="list-group-item">Jogos</a>
          <a href="acessoriosps.php" class="list-group-item">Acessórios</a>
        </div>

         <a href="catn.php"><h4 class="my-4">Nitendo</h4></a>
        <div class="list-group">
          <a href="consolen.php" class="list-group-item">Consoles</a>
          <a href="jogosn.php" class="list-group-item">Jogos</a>
          <a href="acessoriosn.php" class="list-group-item">Acessórios</a>
        </div>
	  
        <a href="catx.php"><h4 class="my-4">Xbox</h4></a>
        <div class="list-group">
          <a href="consolex.php" class="list-group-item">Consoles</a>
          <a href="jogosx.php" class="list-group-item">Jogos</a>
          <a href="acessoriosx.php" class="list-group-item">Acessórios</a>
        </div>
		
		</div>
		
		
		

      <!-- /.col-lg-3 -->

      <div class="col-lg-10">

		
			  <h5>Playstation 4 </h5>
	  <hr>

        <div class="row">
		
		    <div class="col-12">
    </div>
 
  <!-- /.row -->

  <div class="row">
    <div class="col-lg-6 mb-4">
      
      <!-- There's only One image -->
      <div class="">
        <div class="main-product-image">
          <img src="https://cdnx.jumpseller.com/bootstrap/image/429446/resize/400/500?1439529839" alt="iMac Desktop Computer" class="img-fluid">
        </div>
      </div>
      
    </div>

    <div class="col-lg-6">
      <form class="form-horizontal" action="/br/cart/add/224302" method="post" enctype="multipart/form-data" name="buy">

          <!-- Product Price  -->
          <div class="form-group price_elem row">
            <label class="col-sm-3 col-md-3 form-control-label nopaddingtop">Preço:</label>
            <div class="col-sm-8 col-md-9">
              <span class="product-form-price" id="product-form-price">$1.200.000</span>
              

            </div>
          </div>

          

          

          

          <div class="form-group row">
            <label for="Quantity" class="col-sm-3 col-md-3 form-control-label">Quantidade:</label>
            <div class="col-sm-8 col-md-9">
             
              <input type="number" class="qty form-control" id="input-qty" name="qty" maxlength="5" value="1" >
            </div>
          </div>

            


          <!-- Out of Stock -->
          <div class="form-group product-stock product-out-stock row hidden">
            <label class="col-sm-3 col-md-3 form-control-label">Disponibilidade:</label>
            <div class="col-sm-8 col-md-9">
              <span class="product-form-price">Esgotado</span>
              <p>Este produto está sem estoque. Você pode nos enviar um pedido para mais informações.</p>
              <a href="/br/contact" class="btn btn-secondary btn-sm" title="Contate-nos">Contate-nos</a>
              <a href="javascript:history.back()" class="btn btn-link btn-sm" title="&larr; ou continuar comprando">&larr; ou continuar comprando</a>
            </div>
          </div>

          <!-- Not Available -->
          <div class="form-group product-stock product-unavailable row hidden">
            <label class="col-sm-3 col-md-3 form-control-label">Disponibilidade:</label>
            <div class="col-sm-8 col-md-9">
              <span class="product-form-price">Indisponível</span>
              <p>Este produto não está disponível no momento. Você pode nos enviar um pedido para mais informações sobre ele..</p>
              <a href="/br/contact" class="btn btn-secondary btn-sm" title="Contate-nos">Contate-nos</a>
              <a href="javascript:history.back()" class="btn btn-link btn-sm" title="&larr; ou continuar comprando">&larr; ou continuar comprando</a>
            </div>
          </div>

          <div class="form-group product-stock product-available row visible">
            <label class="col-sm-3 col-md-3 form-control-label"></label>
            <div class="col-sm-8 col-sm-offset-3 col-md-9 col-md-offset-3">

              
              <input type="submit" class="adc btn btn-primary" value="Adicionar ao carrinho" />
              


              <a href="javascript:history.back()" class="btn btn-link btn-sm" title="Continue Comprando">&larr; Continue Comprando</a>
            </div>
          </div>


          <div class="form-group row">
            <label class="col-sm-3 col-md-3 form-control-label">Descrição:</label>
            <div class="col-sm-8 col-md-9 description">
              <p>The idea behind iMac has never wavered: to craft the ultimate desktop experience. The best display, paired with high-performance processors, graphics, and storage &mdash; all within an incredibly thin, seamless enclosure. And that commitment continues with the all-new 21.5‑inch iMac with Retina 4K display. Like the revolutionary 27‑inch 5K&nbsp;model, it delivers such spectacular image quality that everything else around you seems to disappear. Adding up to the most immersive iMac experience yet &mdash; and another big, beautiful step&nbsp;forward.</p>
            </div>
          </div>

          
          <div class="form-group row">
            <label class="col-sm-3 col-md-3 form-control-label">Detalhes:</label>
            <div class="col-sm-9 col-md-9">
              
              <p>Marca: Apple</p>
              
            </div>
          </div>
          

          


        <div id="product-sharing" class="row">
          <label class="col-sm-3 col-md-3 ">Compartilhar:</label>
          <ul class="list-inline social-networks col-sm-9 col-md-9">
            
            <li class="list-inline-item">
              <a href="https://www.facebook.com/sharer/sharer.php?u=https://bootstrap.jumpseller.com/br/br/imac-desktop-computer" class="has-tip tip-top radius button tiny button-facebook trsn" title="Compartilhar no Facebook" target="_blank" data-tooltip>
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            

            
            <li class="list-inline-item">
              <a href="https://twitter.com/share?url=https://bootstrap.jumpseller.com/br/br/imac-desktop-computer&text=Veja este produto iMac Desktop Computer" class="has-tip tip-top radius button tiny button-twitter trsn" title="Compartilhar no Twitter" target="_blank" data-tooltip>
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            

            
            <li class="list-inline-item">
              <a href="https://pinterest.com/pin/create/bookmarklet/?media=https://images.jumpseller.com/store/bootstrap/224302/Apple-20-inch-Core-2-Duo-All-in-one-iMac-Desktop-Computer-a6213564-c2ad-4ff9-9fc7-ac24d3b4db49_600.jpg?1439529839&url=https://bootstrap.jumpseller.com/br/br/imac-desktop-computer&is_video=false&description=iMac Desktop Computer: The idea behind iMac has never wavered: to craft the ultimate desktop experience. The best display, paired with high-performance processors, graphics, and storage &mdash; all within an incredibly thin, seamless enclosure. And that commitment continues with the all-new 21.5‑inch iMac with Retina 4K display. Like the revolutionary 27‑inch 5K&nbsp;model, it delivers such spectacular image quality that everything else around you seems to disappear. Adding up to the most immersive iMac experience yet &mdash; and another big, beautiful step&nbsp;forward." class="has-tip tip-top radius button tiny button-pinterest trsn" title="Compartilhar no Pinterest" target="_blank" data-tooltip>
                <i class="fab fa-pinterest"></i>
              </a>
            </li>
            

            
            <li class="list-inline-item">
              <a class="has-tip tip-top radius button tiny button-tumblr trsn" title="Compartilhar no Tumblr" href="http://tumblr.com/widgets/share/tool?canonicalUrl=https://bootstrap.jumpseller.com/br/br/imac-desktop-computer">
                <i class="fab fa-tumblr"></i>
              </a>
            </li>
            <script id="tumblr-js" async src="https://assets.tumblr.com/share-button.js"></script>
            

            
            <li class="list-inline-item">
              <a id="whatsapp" class="has-tip tip-top radius button tiny button-whats trsn" href="https://api.whatsapp.com/send?text=Veja este produto iMac Desktop Computer | https://bootstrap.jumpseller.com/br/br/imac-desktop-computer">
                <i class="fab fa-whatsapp"></i>
              </a>
            </li>
            

          </ul>
      </div>


      </form>
      <script type="text/javascript">
        $('#product-sharing a').click(function(){
          return !window.open(this.href, 'Share', 'width=640,height=300');
        });
      </script>


    </div>
  </div>

		



        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->,
	  
	  

    </div>
    <!-- /.row -->
	  <div class="container bg-2 text-center">
    <div class="row">
	<div class="col-4">
	</div>
	<div class="col-4">
	</div>
	<div class="col-4">
	</div>
  
  </div>


  </div>
  <!-- /.container -->
  </div>

<?php require_once('inc/footer.php'); ?>
