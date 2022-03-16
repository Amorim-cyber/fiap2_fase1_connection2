package br.com.bar.dao;

import java.util.Calendar;
import java.util.List;

import br.com.bar.domain.Bebida;
import br.com.bar.domain.Cliente;

public class ComandaDAO {

	private int id;
	private Calendar dataEntrada;
	private Calendar dataSaida;
	private Cliente cliente;
	private List<Bebida> bebidas;
	
	public ComandaDAO() {
	}
	
	public ComandaDAO(int id, Calendar dataEntrada, Calendar dataSaida, Cliente cliente, List<Bebida> bebidas) {
		
		this.id = id;
		this.dataEntrada = dataEntrada;
		this.dataSaida = dataSaida;
		this.cliente = cliente;
		this.bebidas = bebidas;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Calendar getDataEntrada() {
		return dataEntrada;
	}
	public void setDataEntrada(Calendar dataEntrada) {
		this.dataEntrada = dataEntrada;
	}
	public Calendar getDataSaida() {
		return dataSaida;
	}
	public void setDataSaida(Calendar dataSaida) {
		this.dataSaida = dataSaida;
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
