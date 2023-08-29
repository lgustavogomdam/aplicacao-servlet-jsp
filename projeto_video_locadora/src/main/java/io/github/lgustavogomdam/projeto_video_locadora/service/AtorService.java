package io.github.lgustavogomdam.projeto_video_locadora.service;

import io.github.lgustavogomdam.projeto_video_locadora.model.dto.AtorDTO;
import io.github.lgustavogomdam.projeto_video_locadora.model.entities.AtorEntity;
import io.github.lgustavogomdam.projeto_video_locadora.model.mapper.AtorMapper;
import io.github.lgustavogomdam.projeto_video_locadora.repository.AtorRepository;
import io.github.lgustavogomdam.projeto_video_locadora.repository.GenericRepository;

public class AtorService {
    private AtorRepository repository;

    public AtorService(){
        this.repository = new AtorRepository();
    }
    public AtorDTO save(AtorDTO model){

        if(model != null && repository.pesquisarNome(
                model.getPrimeiroNome(), model.getUltimoNome(), AtorEntity.class) != null)
            throw new RuntimeException("Você está tentando cadastrar um Ator que já existe!");

        AtorEntity entity = AtorMapper.INSTANCE.toEntity(model);
        repository.inserir(entity);

        return model;

    }


}
