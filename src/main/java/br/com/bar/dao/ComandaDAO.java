package br.com.bar.dao;

import java.util.List;

import br.com.bar.domain.Bebida;
import br.com.bar.domain.Cliente;

public class ComandaDAO {

	private int id;
	private Cliente cliente;
	private List<Bebida> bebidas;
	
	public ComandaDAO() {
	}
	
	public ComandaDAO(int id, Cliente cliente, List<Bebida> bebidas) {
		
		this.id = id;
		this.cliente = cliente;
		this.bebidas = bebidas;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public List<Bebida> getBebidas() {
		return bebidas;
	}

	public void setBebidas(List<Bebida> bebidas) {
		this.bebidas = bebidas;
	}
	
	
	
	
}
