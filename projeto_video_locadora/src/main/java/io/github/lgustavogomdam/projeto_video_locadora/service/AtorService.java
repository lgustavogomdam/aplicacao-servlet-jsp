package io.github.lgustavogomdam.projeto_video_locadora.service;

import io.github.lgustavogomdam.projeto_video_locadora.model.dto.AtorDTO;
import io.github.lgustavogomdam.projeto_video_locadora.model.entities.AtorEntity;
import io.github.lgustavogomdam.projeto_video_locadora.model.mapper.AtorMapper;
import io.github.lgustavogomdam.projeto_video_locadora.repository.AtorRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class AtorService {
    private AtorRepository repository;
    private static final Logger logger = Logger.getLogger(AtorService.class.getName());
    public AtorService(){
        this.repository = new AtorRepository();
    }
    public AtorDTO save(AtorDTO model){

        List<AtorEntity> lista = repository.pesquisarNome(model.getPrimeiroNome(), model.getUltimoNome());
        AtorEntity entity = AtorMapper.INSTANCE.toEntity(model);

        if(model != null && !lista.isEmpty()) {
            throw new RuntimeException("Você está tentando cadastrar um Ator que já existe!");
        }

        repository.inserir(entity);

        return model;
    }
    public AtorDTO update(AtorDTO model){


        List<AtorEntity> lista = repository.listar(AtorEntity.class);

        AtorEntity entity = AtorMapper.INSTANCE.toEntity(model);

        if(model == null)
            throw new RuntimeException("ERROR!");

        for (AtorEntity elemento : lista){
            if(elemento.getId() == model.getId())
                repository.alterar(entity);
        }

        return model;
    }

    public List<AtorDTO> getAll(){

        List<AtorEntity> lista = repository.listar(AtorEntity.class);
        List<AtorDTO> listaDTO = new ArrayList<>();

        for (AtorEntity elemento: lista) {
            listaDTO.add(AtorMapper.INSTANCE.toModel(elemento));
        }

        return listaDTO;
    }

    public boolean delete(AtorDTO model){

        List<AtorEntity> lista= repository.listar(AtorEntity.class);

        AtorEntity entity = AtorMapper.INSTANCE.toEntity(model);

        for (AtorEntity elemento : lista) {
            if (entity.getId() == elemento.getId()){
                entity.setPrimeiroNome(elemento.getPrimeiroNome());
                entity.setUltimoNome(elemento.getUltimoNome());
            }
        }

        return repository.excluir(entity);

    }


}
