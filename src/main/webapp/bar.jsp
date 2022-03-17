<%@   page   language="java"   contentType="text/html; charset=UTF-8"
import="br.com.bar.web.bebidas.ListaBebidas"
pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
Object bebidas = new ListaBebidas().findAll();
request.setAttribute("bebidas",bebidas);
%>

<!DOCTYPE html>
<html>
<head>
<base href="https://fiap2fase1connection.herokuapp.com/Bar-Project/">
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/bootstrap-icons-1.5.0/bootstrap-icons.css">
<title>Bar-Project</title>
</head>
<body>
	<div id="main" style="padding:20px;">
		<form>
			<div class="input-group mb-3" style="width:550px;">
			  <input type="text" class="form-control" placeholder="Digite aqui o celular do cliente (ddd+número)" aria-label="Recipient's username" aria-describedby="button-addon2">
			  <button class="btn btn-outline-secondary" type="button" id="button-addon2">Pesquisar</button>
			</div>
		</form>
		<br>
		<div class="accordion accordion-flush" id="accordionFlushExample">
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingOne">
			      <button id="cadastro" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
			        #1 Cadastro (Novo cliente)
			      </button>
			    </h2>
			    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
			      <div style="padding:20px;" class="accordion-body">
			      		
					<div class="card" style="padding:20px;">
						  <div class="card-body" >
						  	<div class="mb-3 row">
							    <label style="text-align:end" for="nome" class="col-sm-1 col-form-label">Nome:</label>
							    <div class="col-sm-11">
							      <input name="nomeCliente" type="text"  class="form-control" id="nomeCliente" value="">
							    </div>
							 </div>
							 <div class="mb-3 row">
							    <label style="text-align:end" for="celular" class="col-sm-1 col-form-label">Celular:</label>
							    <div class="col-sm-11">
							      <input name="celularCliente" type="number"  class="form-control" id="celularCliente" value="">
							    </div>
							 </div>
							 <div class="mb-3 row">
							    <label style="text-align:end" for="cpf" class="col-sm-1 col-form-label">CPF:</label>
							    <div class="col-sm-11">
							      <input name="cpfCliente" type="number" class="form-control" id="cpfCliente" value="">
							    </div>
							 </div>
							 <div class="mb-3 row">
							    <label style="text-align:end" for="email" class="col-sm-1 col-form-label">E-mail:</label>
							    <div class="col-sm-11">
							      <input name="emailCliente" type="email"  class="form-control" id="emailCliente" value="">
							    </div>
							 </div>
							 <div class="mb-3 row">
							 	<label style="text-align:end" for="sexo" class="col-sm-1 col-form-label">sexo:</label>
							    <div class="col-sm-3">
							      <select name="sexoCliente" class="form-select" id="sexoCliente" aria-label="sexo">
								  <option selected>-</option>
								  <option value="Masculino">Masculino</option>
								  <option value="Feminino">Feminino</option>
								  <option value="Outro">Outro</option>
								</select>
							    </div>
							 </div>
							 <br>
							 <div class="mb-3 row">
							 	<button onclick="guardarCliente()" type="button" style="width:100px; height:50px" class="btn btn-primary">Cadastrar</button>
							 </div>
						  </div>
					</div>			      
			      
			      </div>
			    		  
			    </div>
			  </div>
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingTwo">
			      <button id="dashboard" disabled class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
			        #2 DashBoard
			      </button>
			    </h2>
			    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
			      <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
			    </div>
			  </div>
			  <div class="accordion-item">
			    <h2 class="accordion-header" id="flush-headingThree">
			      <button id="comanda" disabled  class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
			        #3 Comanda
			      </button>
			    </h2>
			    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
			      <div style="padding:20px;" class="accordion-body">
			      		<div class="card" style="padding:10px;">
						  <div class="card-body" >
						    <select class="form-select" id="listaBebidas" aria-label="Bebidas">
							  <option selected>-</option>
							  <c:forEach var="bebida" items="${bebidas}">
							  	<option value="${bebida}">${bebida.getNome()}</option>
							  </c:forEach>
							</select>
						  </div>
						  <input style="margin-bottom:5px;" class="form-control" id="nomeBebida" type="text" placeholder="Nome Bebida" aria-label="Nome Bebida" disabled>
						  <input style="margin-bottom:5px;" class="form-control" id="tipoBebida" type="text" placeholder="Tipo de Bebida" aria-label="Tipo de Bebida" disabled>
						  <input style="margin-bottom:5px;" class="form-control" id="descricaoBebida" type="text" placeholder="Descrição da Bebida" aria-label="Descrição da Bebida" disabled>
						  <input style="margin-bottom:5px;" class="form-control" id="precoBebida" type="text" placeholder="Preço da Bebida" aria-label="Preço da Bebida" disabled>
						  
						  
						  <br>
						  <button onclick="inserirBebida()" type="button" style="width:100px; height:50px" class="btn btn-primary">Adicionar</button>
						  <br>
						  
						  
						  	<div class="card" style="padding:10px;width:50%; height:200px">
						  		<div class="card-body" style="height:100%">
						  			<div class="overflow-auto" style="height:100%">
							  			<table class="table">
										  <thead>
										    <tr>
										      <th scope="col">Bebida</th>
										      <th scope="col">Preço</th>
										      <th scope="col"></th>
										    </tr>
										  </thead>
										  <tbody id="conta">
										    
										  </tbody>
										  <tfoot id="total" style="display:none; ">
										  		<tr>
										  		<th scope="col">TOTAL</th>
										  		<th  scope="col"></th>
										  		<th id="valorTotal" scope="col"></th>
										  		</tr>
										  </tfoot>
										</table>
									</div>
						  		</div>
						  	</div>
						  <br>
						  <form action="bar.jsp" method="post">
						  	<button type="button" style="width:150px; height:50px" class="btn btn-danger">Fechar conta</button>
						  </form>
						</div>
			      </div>
			    </div>
			  </div>
			</div>
	</div>

	
	


	
	<script src="../resources/js/bebidas/selecionarBebida.js"></script>
	<script src="../resources/js/bebidas/inserirBebida.js"></script>
	<script src="../resources/js/bebidas/removerBebida.js"></script>
	<script src="../resources/js/bebidas/calcularTotal.js"></script>
	<script src="../resources/js/cliente/guardarCliente.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>