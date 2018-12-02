package com.vinic.noticias.api.service;

import java.util.List;
import java.util.Optional;

import com.vinic.noticias.api.documents.Noticia;

public interface NoticiaService {
	List<Noticia> listaTodos();
	Optional <Noticia> listarPorId(String id);
	Noticia cadastrar (Noticia noticia);
	Noticia atualizar (Noticia noticia);
	void remover(String id);
}
