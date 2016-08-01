package com.repository.hibernate;

import java.lang.Integer;
import com.model.hibernateDomain.Agency;
import com.repository.interfaces.IAgencyRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;                      
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

      
public interface HAgencyRepository extends IAgencyRepository, PagingAndSortingRepository<Agency, Integer>, JpaSpecificationExecutor<Agency> {
      
//    Page<Inscription> findAll(Pageable pageable);
}   
