package io.github.lgustavogomdam.projeto_video_locadora.model.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "classe")
public class ClasseEntity implements Serializable {

    private static final Long SerialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "nome", length = 50, nullable = false)
    private String nome;
    @Column(name = "valor", nullable = false)
    private Double valor;
    @Column(name = "data_devolucao", length = 50, nullable = false)
    private Date dataDevolucao;

    public ClasseEntity() {
    }

    public ClasseEntity(String nome, Double valor, Date dataDevolucao) {
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
