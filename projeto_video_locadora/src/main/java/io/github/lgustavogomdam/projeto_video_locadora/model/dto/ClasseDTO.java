package io.github.lgustavogomdam.projeto_video_locadora.model.dto;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;

public class ClasseDTO {
    private static final Long SerialVersionUID = 1L;

    private Long id;
    private String nome;
    private Double valor;
    private Date dataDevolucao;

    public ClasseDTO() {
    }

    public ClasseDTO(String nome, Double valor, Date dataDevolucao) {
        this.nome = nome;
        this.valor = valor;
        this.dataDevolucao = dataDevolucao;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return this.nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getValor() {
        return this.valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public Date getDataDevolucao() {
        return this.dataDevolucao;
    }

    public void setDataDevolucao(Date dataDevolucao) {
        this.dataDevolucao = dataDevolucao;
    }

}
