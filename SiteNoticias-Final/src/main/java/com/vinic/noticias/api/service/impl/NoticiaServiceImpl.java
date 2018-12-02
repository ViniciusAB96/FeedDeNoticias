package com.vinic.noticias.api.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vinic.noticias.api.repositories.NoticiaRepository;
import com.vinic.noticias.api.documents.Noticia;
import com.vinic.noticias.api.service.NoticiaService;


@Service
public class NoticiaServiceImpl implements NoticiaService {

	@Autowired
	private NoticiaRepository noticiaRepository;
	
	
	@Override
	public List<Noticia> listaTodos() {
		return this.noticiaRepository.findAll();
	}

	@Override
	public Optional<Noticia> listarPorId(String id) {
		return this.noticiaRepository.findById(id);
	}

	@Override
	public Noticia cadastrar(Noticia noticia) {
	  return this.noticiaRepository.save(noticia);
	}

	@Override
	public Noticia atualizar(Noticia noticia) {
		return this.noticiaRepository.save(noticia);
	}

	@Override
	public void remover(String id) {
		this.noticiaRepository.deleteById(id);
		
	}

}
