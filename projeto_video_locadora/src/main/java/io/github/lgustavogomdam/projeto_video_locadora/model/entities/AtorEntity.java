package io.github.lgustavogomdam.projeto_video_locadora.model.entities;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "ator")
public class AtorEntity implements Serializable {

    private static final Long SerialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "primeiro_nome", length = 25, nullable = false)
    private String primeiroNome;

    @Column(name = "ultimo_nome", length = 25, nullable = false)
    private String ultimoNome;

    public AtorEntity() {
    }

    public AtorEntity(Long id, String primeiroNome, String ultimoNome) {
        this.id = id;
        this.primeiroNome = primeiroNome;
        this.ultimoNome = ultimoNome;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return this.id;
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
