package io.github.lgustavogomdam.projeto_video_locadora.service;

import io.github.lgustavogomdam.projeto_video_locadora.model.dto.ClasseDTO;
import io.github.lgustavogomdam.projeto_video_locadora.model.entities.ClasseEntity;
import io.github.lgustavogomdam.projeto_video_locadora.model.mapper.ClasseMapper;
import io.github.lgustavogomdam.projeto_video_locadora.repository.ClasseRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class ClasseService {

    private ClasseRepository repository;
    private static final Logger logger = Logger.getLogger(AtorService.class.getName());
    public ClasseService(){
        this.repository = new ClasseRepository();
    }
    public ClasseDTO save(ClasseDTO model){

        List<ClasseEntity> lista = repository.listar(ClasseEntity.class);
        ClasseEntity entity = ClasseMapper.INSTANCE.toEntity(model);

        repository.inserir(entity);

        return model;
    }
    public ClasseDTO update(ClasseDTO model){


        List<ClasseEntity> lista = repository.listar(ClasseEntity.class);

        ClasseEntity entity = ClasseMapper.INSTANCE.toEntity(model);

        if(model == null)
            throw new RuntimeException("ERROR!");

        for (ClasseEntity elemento : lista){
            if(elemento.getId() == model.getId())
                repository.alterar(entity);
        }

        return model;
    }

    public List<ClasseDTO> getAll(){

        List<ClasseEntity> lista = repository.listar(ClasseEntity.class);
        List<ClasseDTO> listaDTO = new ArrayList<>();

        for (ClasseEntity elemento: lista) {
            listaDTO.add(ClasseMapper.INSTANCE.toModel(elemento));
        }

        return listaDTO;
    }

    public boolean delete(ClasseDTO model){

        List<ClasseEntity> lista= repository.listar(ClasseEntity.class);

        ClasseEntity entity = ClasseMapper.INSTANCE.toEntity(model);

        for (ClasseEntity elemento : lista) {
            if (entity.getId() == elemento.getId()){
                entity.setNome(model.getNome());
                entity.setValor(model.getValor());
                entity.setDataDevolucao(model.getDataDevolucao());
            }
        }

        return repository.excluir(entity);

    }
}
