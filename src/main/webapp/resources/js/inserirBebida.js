function inserirBebida(){
	
	if(document.getElementById("listaBebidas").value == "-") return;
	
	var conta = document.getElementById("conta");
	
	var row = document.createElement('tr');
	
	var nome = document.createElement('td');
	nome.innerHTML = document.getElementById("nomeBebida").getAttribute("placeholder");
	
	var preco = document.createElement('td');
	preco.innerHTML = document.getElementById("precoBebida").getAttribute("placeholder");
	
	var botao = document.createElement('button');
	botao.setAttribute('type','button');
	botao.setAttribute('style','width:100px; height:40px');
	botao.setAttribute('class','btn btn-warning');
	botao.setAttribute('onclick',
	'remover(document.getElementById("conta").getElementsByTagName("tr").length-1)');
	botao.innerHTML = "Remover";
	
	var del = document.createElement('td');
	del.appendChild(botao);
	
	row.appendChild(nome);
	row.appendChild(preco);
	row.appendChild(del);
	
	conta.appendChild(row);
	
	document.getElementById("listaBebidas").options[0].selected = 'selected';
	
	document.getElementById("nomeBebida").
	setAttribute("placeholder","Nome Bebida");
	
	document.getElementById("tipoBebida").
	setAttribute("placeholder","Tipo de Bebida");
	
	document.getElementById("descricaoBebida").
	setAttribute("placeholder","Descrição da Bebida");
	
	document.getElementById("precoBebida").
	setAttribute("placeholder","Preço da Bebida");
	
	document.getElementById("total").setAttribute("style","display:block;");
	
	calcularTotal();
	 
}