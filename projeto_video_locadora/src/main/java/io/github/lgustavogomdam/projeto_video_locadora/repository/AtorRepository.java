package io.github.lgustavogomdam.projeto_video_locadora.repository;

import io.github.lgustavogomdam.projeto_video_locadora.model.entities.AtorEntity;
import io.github.lgustavogomdam.projeto_video_locadora.service.AtorService;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;

public class AtorRepository extends GenericRepository{

    public List<AtorEntity> pesquisarNome(String primeiroNome, String ultimoNome) throws HibernateException {
        List lista = null;
        Session sessao = null;
        try {
            sessao = Conexao.getSessionFactory().openSession();
            sessao.beginTransaction();

            // Construtor da CONSULTA
            CriteriaBuilder builder = sessao.getCriteriaBuilder();
            CriteriaQuery consulta = builder.createQuery( AtorEntity.class );

            // FROM
            Root tabela = consulta.from(AtorEntity.class);

            // RESTRIÇÕES
            Predicate restricoes = null;

            restricoes = builder.like(tabela.get("primeiroNome"), primeiroNome + "%" );
            if (ultimoNome != null)
                restricoes = builder.like(tabela.get("ultimoNome"), ultimoNome + "%" );

            consulta.where(restricoes);
            lista = sessao.createQuery(consulta).getResultList();

            sessao.getTransaction().commit();
            sessao.close();
        } catch (HibernateException ex) {
            if (sessao != null ) {
                sessao.getTransaction().rollback();
                sessao.close();
            }
            throw new HibernateException(ex);
        }
        return lista;
    }
}
