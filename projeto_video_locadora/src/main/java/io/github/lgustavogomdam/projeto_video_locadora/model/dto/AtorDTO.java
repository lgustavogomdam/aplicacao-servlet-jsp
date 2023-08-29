package io.github.lgustavogomdam.projeto_video_locadora.model.dto;

import javax.persistence.Column;
import java.io.Serializable;

public class AtorDTO implements Serializable {

    private static final Long SerialVersionUID = 1L;
    private Long id;
    private String primeiroNome;
    private String ultimoNome;

    public AtorDTO(String primeiroNome, String ultimoNome) {
        this.primeiroNome = primeiroNome;
        this.ultimoNome = ultimoNome;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPrimeiroNome() {
        return this.primeiroNome;
    }

    public void setPrimeiroNome(String primeiroNome) {
        this.primeiroNome = primeiroNome;
    }

    public String getUltimoNome() {
        return this.ultimoNome;
    }

    public void setUltimoNome(String ultimoNome) {
        this.ultimoNome = ultimoNome;
    }
}
