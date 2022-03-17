
const element = document.getElementById("listaBebidas");
element.addEventListener('change', () => {
	
	if(document.getElementById("listaBebidas").value != "-") {
		document.getElementById("nomeBebida").
	setAttribute("placeholder",`${event.target.value}`.split(',')[1].replace("nome=",""));
	
	document.getElementById("tipoBebida").
	setAttribute("placeholder",`${event.target.value}`.split(',')[2].replace("tipo=",""));
	
	document.getElementById("descricaoBebida").
	setAttribute("placeholder",`${event.target.value}`.split(',')[3].replace("descricao=",""));
	
	document.getElementById("precoBebida").
	setAttribute("placeholder","R$ "+`${event.target.value}`.split(',')[4].replace("price=","").replace("]","").replace(".",",")+"0");
	}
	
	
	
}
	
	
);
const event = new Event('change');  
element.dispatchEvent(event);