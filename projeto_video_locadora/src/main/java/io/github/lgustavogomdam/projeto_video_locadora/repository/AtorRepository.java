package io.github.lgustavogomdam.projeto_video_locadora.repository;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;

public class AtorRepository extends GenericRepository{

    public List<Object> pesquisarNome(String primeiroNome, String ultimoNome, Class classe) throws HibernateException {

        List lista = null;
        Session sessao = null;
        try {
            sessao = Conexao.getSessionFactory().openSession();
            sessao.beginTransaction();

            // Construtor da CONSULTA
            CriteriaBuilder builder = sessao.getCriteriaBuilder();
            CriteriaQuery consulta = builder.createQuery( classe );

            // FROM
            Root tabela = consulta.from(classe);

            // RESTRIÇÕES
            Predicate restricoes = null;

            if(!primeiroNome.isEmpty() && !primeiroNome.equals(""))
                throw new HibernateException("Parâmetros de pesquisa inválido!");

            restricoes = builder.like(tabela.get("primeiro_nome"), primeiroNome + "%" );
            restricoes = builder.like(tabela.get("ultimo_nome"), ultimoNome + "%");

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
