package com.vinic.noticias.api.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vinic.noticias.api.documents.Noticia;
import com.vinic.noticias.api.response.Response;
import com.vinic.noticias.api.service.NoticiaService;

@RestController
@RequestMapping(path="/api/noticia")
public class NoticiaController {

	@Autowired
	private NoticiaService noticiaService; 
	
	//Ajuda a retornar os dados da comunicação HTTP
	
	@GetMapping
	public ResponseEntity<Response<List<Noticia>>> listarTodos(){
		return ResponseEntity.ok(new Response <List<Noticia>>(this.noticiaService.listaTodos()));
	}
	
	@GetMapping(path="/{id}") //isso significa que esse valor é dinâmico, ou seja sempre que eu fizer uma requisição esse volor será apresentado na URL 
	public ResponseEntity<Response<Optional <Noticia>>> listarPorId(@PathVariable(name= "id") String id){
		return ResponseEntity.ok(new Response <Optional<Noticia>>(this.noticiaService.listarPorId(id)));
		//@PathVariable pega o valor do id do url e adiciona no java 
	}
	
	@PostMapping 
	public ResponseEntity<Response<Noticia>> cadastrar(@Valid @RequestBody Noticia noticia, BindingResult result)
	{
		if(result.hasErrors()) {
			List<String> erros = new ArrayList<String>();
			result.getAllErrors().forEach(erro -> erros.add(erro.getDefaultMessage()));
			return 	ResponseEntity.badRequest().body(new Response<Noticia>(erros));
		}
		return ResponseEntity.ok(new Response<Noticia>(this.noticiaService.cadastrar(noticia)));
		
	}
	
	@PutMapping (path = "/{id}")
	public ResponseEntity<Response<Noticia>> atualizar(@Valid @PathVariable (name="id") String id, @RequestBody Noticia noticia,  BindingResult result){
		noticia.setId(id);
		
		if(result.hasErrors()) {
			List<String> erros = new ArrayList<String>();
			result.getAllErrors().forEach(erro -> erros.add(erro.getDefaultMessage()));
			return 	ResponseEntity.badRequest().body(new Response<Noticia>(erros));
		}
		
		return ResponseEntity.ok(new Response<Noticia>(this.noticiaService.atualizar(noticia)));
		
	}
	
	
	@DeleteMapping (path = "/{id}")
	public ResponseEntity<Response<String>> remover(@PathVariable (name = "id") String id){
		this.noticiaService.remover(id);
		return ResponseEntity.ok(new Response<String>("A notícia foi deletada com sucesso."));
	}
}
