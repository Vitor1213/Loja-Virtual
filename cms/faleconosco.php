<?php require_once('inc/header.php'); ?>

  <!-- Page Content -->
  <div class="container">

	
    <div class="row">

      <div class="col-lg-2">
	  
		

		
		</div>
    
      <!-- /.col-lg-3 -->

      <div class="col-lg-8">

		
			  <h5>Fale Conosco</h5>
	  <hr>

        <div class="row">
  <div class="container marketing text-center">
  
	<p>Preencha o formulário abaixo que responderemos para você o mais breve possível.</p>
	<p>Ou se preferir entre em contato pelo telefone (21) 99999-4949.</p>


<?php
if (isset($_POST['BTEnvia'])) {
 
 //Variaveis de POST, Alterar somente se necessário 
 //====================================================
 $nome = $_POST['nome'];
 $email = $_POST['email'];
 $telefone = $_POST['telefone']; 
 $mensagem = $_POST['mensagem'];
 //====================================================
 
 //REMETENTE --> ESTE EMAIL TEM QUE SER VALIDO DO DOMINIO
 //==================================================== 
 $email_remetente = "email@doseudominio"; // deve ser uma conta de email do seu dominio 
 //====================================================
 
 //Configurações do email, ajustar conforme necessidade
 //==================================================== 
 $email_destinatario = "email@querecebe"; // pode ser qualquer email que receberá as mensagens
 $email_reply = "$email"; 
 $email_assunto = "Contato formmail"; // Este será o assunto da mensagem
 //====================================================
 
 //Monta o Corpo da Mensagem
 //====================================================
 $email_conteudo = "Nome = $nome \n"; 
 $email_conteudo .= "Email = $email \n";
 $email_conteudo .= "Telefone = $telefone \n"; 
 $email_conteudo .= "Mensagem = $mensagem \n"; 
 //====================================================
 
 //Seta os Headers (Alterar somente caso necessario) 
 //==================================================== 
 $email_headers = implode ( "\n",array ( "From: $email_remetente", "Reply-To: $email_reply", "Return-Path: $email_remetente","MIME-Version: 1.0","X-Priority: 3","Content-Type: text/html; charset=UTF-8" ) );
 //====================================================
 
 //Enviando o email 
 //==================================================== 
 if (mail ($email_destinatario, $email_assunto, nl2br($email_conteudo), $email_headers)){ 
 echo "</b>E-Mail enviado com sucesso!</b>"; 
 } 
 else{ 
 echo "</b>Falha no envio do E-Mail!</b>"; } 
 //====================================================
} 
?>
 
 <form action="<? $PHP_SELF; ?>" method="POST"> 
 <p> 
 Nome:<br /> 
 <input type="text" size="30" name="nome"> 
 </p>   
 <p> 
 E-mail:<br /> 
 <input type="text" size="30" name="email"> 
 </p>   
 <p> 
 Telefone:<br /> 
 <input type="text" size="35" name="telefone"> 
 </p>   
 <p> 
 Mensagem:<br /> 
 <input type="text" size="35" name="mensagem"> 
 </p>   
 <p>
          <input type="submit" name="BTEnvia" value="Enviar"> 
   <input type="reset" name="BTApaga" value="Apagar">
        </p>

       
      
        <!-- /.row -->

      </div>


        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->
	  
	        <div class="col-lg-2">

  
		
		</div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->
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

<?php require_once('inc/footer.php'); ?>
