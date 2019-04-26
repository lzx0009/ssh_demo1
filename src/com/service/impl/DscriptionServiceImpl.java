package com.service.impl;

import com.dao.DscriptionDao;
import com.entity.Dscription;
import com.service.DscriptionService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class DscriptionServiceImpl implements DscriptionService {

    private DscriptionDao dscriptionDao;

    public void setDscriptionDao(DscriptionDao dscriptionDao) {
        this.dscriptionDao = dscriptionDao;
    }

    @Override
    public List<Dscription> findClass() {
        return dscriptionDao.findClass();
    }
}
