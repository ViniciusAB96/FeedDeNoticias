package com.vinic.noticias.api.documents;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Noticia {
	
	@Id
	private String id;
	private String titulo;
	private String subTitulo;
	private String resumo;
	private String texto;
	private String caminhoImagem;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	@javax.validation.constraints.NotEmpty (message = "O Título não pode ser nulo")
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	@javax.validation.constraints.NotEmpty (message = "O Subtítulo não pode ser nulo")
	public String getSubTitulo() {
		return subTitulo;
	}
	public void setSubTitulo(String subTitulo) {
		this.subTitulo = subTitulo;
	}
	@javax.validation.constraints.NotEmpty (message = "O Resumo não pode ser nulo")
	public String getResumo() {
		return resumo;
	}
	public void setResumo(String resumo) {
		this.resumo = resumo;
	}
	@javax.validation.constraints.NotEmpty (message = "O texto não pode ser nulo")
	public String getTexto() {
		return texto;
	}
	public void setTexto(String texto) {
		this.texto = texto;
	}
	public String getCaminhoImagem() {
		return caminhoImagem;
	}
	public void setCaminhoImagem(String caminhoImagem) {
		this.caminhoImagem = caminhoImagem;
	}
	
}
