package io.github.lgustavogomdam.projeto_video_locadora.model.mapper;

import io.github.lgustavogomdam.projeto_video_locadora.model.dto.AtorDTO;
import io.github.lgustavogomdam.projeto_video_locadora.model.entities.AtorEntity;
import org.mapstruct.factory.Mappers;

@org.mapstruct.Mapper
public interface AtorMapper{

    AtorMapper INSTANCE = Mappers.getMapper( AtorMapper.class );

    AtorDTO toModel(AtorEntity entity);

    AtorEntity toEntity(AtorDTO Model);
}
