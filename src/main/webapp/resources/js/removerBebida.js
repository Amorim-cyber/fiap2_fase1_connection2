function remover(value){
	var row = document.getElementById("conta").getElementsByTagName("tr");
	
	row[value].parentNode.removeChild(row[value]);
	
	
	for(let i=0; i< row.length; i++){
		row[i].getElementsByTagName('button')[0].setAttribute('onclick',
	'remover(document.getElementById("conta").getElementsByTagName("tr").length-1)');
	}
	
	calcularTotal();
	
}