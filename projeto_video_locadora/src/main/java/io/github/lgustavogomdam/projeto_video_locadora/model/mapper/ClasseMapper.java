package io.github.lgustavogomdam.projeto_video_locadora.model.mapper;

import io.github.lgustavogomdam.projeto_video_locadora.model.dto.AtorDTO;
import io.github.lgustavogomdam.projeto_video_locadora.model.dto.ClasseDTO;
import io.github.lgustavogomdam.projeto_video_locadora.model.entities.AtorEntity;
import io.github.lgustavogomdam.projeto_video_locadora.model.entities.ClasseEntity;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface ClasseMapper {

    ClasseMapper INSTANCE = Mappers.getMapper( ClasseMapper.class );

    ClasseDTO toModel(ClasseEntity entity);

    ClasseEntity toEntity(ClasseDTO Model);
}
