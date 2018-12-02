package com.vinic.noticias.api.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.vinic.noticias.api.documents.Noticia;

public interface NoticiaRepository extends MongoRepository<Noticia, String> {
	
}//Todas as taferas são herdadas por padrao através do MongoRepository
