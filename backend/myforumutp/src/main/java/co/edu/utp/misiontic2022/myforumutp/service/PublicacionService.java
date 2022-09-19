package co.edu.utp.misiontic2022.myforumutp.service;

import co.edu.utp.misiontic2022.myforumutp.dto.PublicacionDto;

import java.util.List;

public interface PublicacionService {

    PublicacionDto getPublicacionById(Long id);

    List<PublicacionDto> getPublicacionesByAsunto(String asunto);

    List<PublicacionDto> getAllPublicaciones();

    void savePublicacion(PublicacionDto publicacionDto);

    void updatePublicacion(Long id, PublicacionDto publicacionDto);

    void deletePublicacionById(Long id);

}
