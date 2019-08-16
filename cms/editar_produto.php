<?php 
	require_once("inc/header.php");
	$eEdicao 	= NULL;
	$id 		= NULL;
	$produto 	= NULL;
	$console	= NULL;
	$empresa	= NULL;
	$nome		= NULL;
	$categoria	= NULL;
	$imagem		= NULL;
	$mine		= NULL;
	$preco		= NULL;
	$estoque	= NULL;
	$ativo		= NULL;
	$descricao	= NULL;
	if(!isset($_GET["id"])) { // Inclusão
		$eEdicao = false;
		if(isset($_POST["btnIncluir"])) {
			$imagem = uploadImagem($_FILES["filImagem"]);
			$id = incluirProduto($_POST["txtProduto"], $_POST["txtConsole"], $_POST["txtEmpresa"], $_POST["txtNome"], $_POST["txtCategoria"], $arquivo,$_FILES["filImagem"]["type"], $_POST["txtPreco"] , $_POST["txtEstoque"], $_POST["selAtivo"], $_POST["txtDescricao"]);
			if(!is_null($id)) {
				header("location:editar_produto.php?id=$Id&msg=incluir-sucesso");
			} else { 
				echo "<script> $('#msg').display = block; </script>";
			} 
		}
	} else { // alteração ou exclusão
		$eEdicao = true;
		if(isset($_POST["btnAlterar"])) {
			$imagem = uploadImagem($_FILES["filImagem"]);
			$controle = alterarProduto($_GET["id"], $_POST["txtProduto"], $_POST["txtConsole"], $_POST["txtEmpresa"], $_POST["txtNome"], $_POST["txtCategoria"], $imagem,$_FILES["filImagem"]["type"], $_POST["txtPreco"], $_POST["txtEstoque"], $_POST["selAtivo"], $_POST["txtDescricao"]);
			if($controle) {
				$id = $_GET["id"];
				header("location:editar_produto.php?id=$id&msg=alterar-sucesso");
			} else {
				
			}
		} else if(isset($_POST["btnExcluir"])) {	
			$controle = excluirProduto($_GET["id"]);
			if($controle) {
				header("location:listar_produto.php");
			} else {
				
			}
		} else {
			$reg = consultarProduto($_GET["id"]);
			$produto 	= $reg["produto"];
			$console 	= $reg["console"];
			$empresa	= $reg["empresa"];
			$nome 		= $reg["nome"];
			$categoria 	= $reg["categoria"];
			$imagem		= $reg["imagem"];
			$preco 		= $reg["preco"];
			$estoque	= $reg["estoque"];
			$ativo	 	= $reg["ativo"];
			$descricao 	= $reg["descricao"];
		}
	}
?>
    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2"><?= $eEdicao ? "Editar" : "Adicionar"?> Produtos</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group mr-2">
            <a href="listar_produto.php" class="btn btn-sm btn-outline-primary">Voltar</a>
          </div>
        </div>
      </div>

      <h2>Editar</h2>
	  <div class="row">
		<div id="msg" class="alert alert-success" role="alert" style="display:none;">
			A simple success alert—check it out!
		</div>
	  </div>
      <div class="row">
		<div class="col-md-12">
			<form method="post" enctype="multipart/form-data" action="#">
				<div class="form-group">
					<label for="txtTitulo">Produto:</label>
					<input type="text" class="form-control" id="txtProduto" name="txtProduto" required placeholder="Tipo de Produto" value="<?=$produto?>" />
				</div>
				<div class="form-group">
					<label for="txtConsole">Console:</label>
					<textarea name="txtConsole" id="txtConsole" class="form-control" required placeholder="Qual o Console"><?=$console?></textarea>
				</div>
				<div class="form-group">
					<label for="txtEmpresa">Empresa:</label>
					<textarea name="txtEmpresa" id="txtEmpresa" class="form-control" required placeholder="Qual a Empresa"><?=$empresa?></textarea>
				</div>
				<div class="form-group">
					<label for="txtNome">Nome do Jogo:</label>
					<textarea name="txtNome" id="txtNome" class="form-control" required placeholder="Digite Nome do Jogo"><?=$nome?></textarea>
				</div>
				<div class="form-group">
					<label for="txtCategoria">Categoria do Jogo:</label>
					<textarea name="txtCategoria" id="txtCategoria" class="form-control" required placeholder="Qual a Categoria do Jogo"><?=$categoria?></textarea>
				</div>
				<div class="form-group">
					<img src="../upload/<?=$imagem?>" class="img" alt="<?=$imagem?>" height="150">
				</div>
				<div class="form-group">
					<label for="filImagem">Imagem:</label>
					<input type="file" class="form-control" id="filImagem" name="filImagem" />
				</div>
				<div class="form-group">
					<label for="txtPreco">Preço:</label>
					<input type="number" class="form-control" id="txtPreco" name="txtPreco" required placeholder="Preço do Produto" value="<?=$preco?>" />
				</div>
				<div class="form-group">
					<label for="txtEstoque">Estoque:</label>
					<input type="number" class="form-control" id="txtEstoque" name="txtEstoque" required placeholder="Quantidade no Estoque" value="<?=$estoque?>" />
				</div>
				<div class="form-group">
					<label for="selAtivo">Ativo:</label>
					<select name="selAtivo" id="selAtivo" class="form-control" required>
						<option value="">Selecione um opção</option>
						<option value="1" <?= $ativo == 1 ? "selected='selected'" : "" ?> >Sim</option>
						<option value="0" <?= $ativo == 0 ? "selected='selected'" : "" ?> >Não</option>
					</select>
				</div>
				<div class="form-group">
					<label for="txtDescricao">Descrição do Jogo:</label>
					<textarea name="txtDescricao" id="txtDescricao" class="form-control" required placeholder="Descreva o Jogo"><?=$descricao?></textarea>
				</div>
				<div class="form-group">
					<?php if(!$eEdicao) { ?>
					<input type="submit" name="btnIncluir" id="btnIncluir" class="btn btn-success" value="Adicionar" />
					<?php } else { ?>
					<input type="submit" name="btnAlterar" id="btnAlterar" class="btn btn-success" value="Salvar" />
					<input type="submit" name="btnExcluir" id="btnExcluir" class="btn btn-danger" value="Excluir" />
					<?php } ?>
				</div>
			</form>
		</div>
      </div>
    </main>
  <?php require_once("inc/footer.php"); ?>