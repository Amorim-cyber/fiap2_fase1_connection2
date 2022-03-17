package br.com.bar.web.conta;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.bar.dao.BebidaDAO;
import br.com.bar.dao.ClienteDAO;
import br.com.bar.dao.ComandaDAO;
import br.com.bar.service.BebidaService;

public class Conta extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BebidaService bebidaService = new BebidaService();
    
    public Conta() {
    	
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClienteDAO cliente = new ClienteDAO(
		0,
		request.getParameter("nomeCliente"),
		Integer.parseInt(request.getParameter("celularCliente")),
		Integer.parseInt(request.getParameter("cpfCliente")),
		request.getParameter("emailCliente"),
		request.getParameter("sexoCliente")
		);
		
		String[] bebidas = request.getParameterValues("bebidas");
		List<BebidaDAO> listaBebidas = new ArrayList<BebidaDAO>();
		
		for(String bebida : bebidas) {
			listaBebidas.add(bebidaService.find(Integer.parseInt(bebida)));
		}
		
		ComandaDAO comanda = new ComandaDAO();
		
		
		
		request.getRequestDispatcher("bar.jsp").forward(request, response);
	}

}
