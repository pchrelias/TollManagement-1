package com.atc.dao;

import com.atc.entity.Station;
import java.util.List;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;

@Repository
public class StationDaoImpl extends SuperDao implements StationDao {

  @Override
    public List<Station> findAll() {
        Query q = getSession().createQuery("FROM Station");
        List<Station> list = q.getResultList();
        return list;
    }

    @Override
    public void addOrUpdate(Station s) {
        getSession().saveOrUpdate(s);
    }

    @Override
    public Station findById(Integer id) {
        return (Station)getSession().get(Station.class, id);
    }

    @Override
    public void delete(int id) {
        Station s = getSession().getReference(Station.class, id);
        getSession().delete(s);
    }

    @Override
    public List<Station> findByName(String search) {
        Query q = getSession().createQuery("SELECT s FROM Station s WHERE s.stationName LIKE :name");
        q.setParameter("name","%"+ search +"%");
        List<Station> list = q.getResultList();
        return list;
    }
  
}
