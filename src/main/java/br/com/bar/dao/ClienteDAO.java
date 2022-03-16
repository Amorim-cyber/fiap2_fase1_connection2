package br.com.bar.dao;

import java.util.List;

import br.com.bar.domain.Comanda;

public class ClienteDAO {

	private int id;
	private String nome;
	private int celular;
	private int cpf;
	private String email;
	private String sexo;
	private List<Comanda> comandas;
	
	public ClienteDAO() {
	}
	
	public ClienteDAO(int id, String nome, int celular, int cpf, String email, String sexo, List<Comanda> comandas) {
		
		this.id = id;
		this.nome = nome;
		this.celular = celular;
		this.cpf = cpf;
		this.email = email;
		this.sexo = sexo;
		this.comandas = comandas;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getCelular() {
		return celular;
	}
	public void setCelular(int celular) {
		this.celular = celular;
	}
	public int getCpf() {
		return cpf;
	}
	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public List<Comanda> getComandas() {
		return comandas;
	}
	public void setComandas(List<Comanda> comandas) {
		this.comandas = comandas;
	}
	
	
	
	
}
