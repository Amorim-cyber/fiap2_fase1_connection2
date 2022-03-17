function calcularTotal(){
	var pedidos = document.getElementById("conta").getElementsByTagName("tr");
	var totalRow = document.getElementById("total");
	var total = 0;
	
	
	if(pedidos.length > 0){
		for(let i=0; i< pedidos.length; i++){
			 total += parseFloat(pedidos[i].getElementsByTagName("td")[1].innerHTML
					.replace("R$ ","").replace(",","."));
		}
		
		document.getElementById("valorTotal").innerHTML =
		total.toLocaleString('pt-BR', {style: 'currency', currency: 'BRL'});
		
	}else{
		totalRow.setAttribute("style","display:none;");
	}
}

