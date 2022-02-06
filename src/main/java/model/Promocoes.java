package model;

public class Promocoes {

	private int id;
	private String nomePacote;
	private String destino;
	private String descricao;
	private int preco;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNomePacote() {
		return nomePacote;
	}
	public void setNomePacote(String nomePacote) {
		this.nomePacote = nomePacote;
	}
	public String getDestino() {
		return destino;
	}
	public void setDestino(String destino) {
		this.destino = destino;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getPreco() {
		return preco;
	}
	public void setPreco(int preco) {
		this.preco = preco;
	}
	@Override
	public String toString() {
		return "Promocoes [id=" + id + ", nomePacote=" + nomePacote + ", destino=" + destino + ", descricao="
				+ descricao + ", preco=" + preco + "]";
	}
	
}
