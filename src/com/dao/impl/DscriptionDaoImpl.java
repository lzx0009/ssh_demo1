package com.dao.impl;

import com.dao.DscriptionDao;
import com.entity.Dscription;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class DscriptionDaoImpl extends HibernateDaoSupport implements DscriptionDao {

    @Override
    public List<Dscription> findClass() {
        return (List<Dscription>) this.getHibernateTemplate().find("from Dscription");
    }


}
