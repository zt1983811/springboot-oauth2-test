package com.toms.api.repository.hibernate;

import com.toms.api.model.hibernateDomain.Agency;
import com.toms.api.repository.interfaces.IAgencyRepository;
import java.lang.Integer;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;                      
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

      
public interface HAgencyRepository extends IAgencyRepository, PagingAndSortingRepository<Agency, Integer>, JpaSpecificationExecutor<Agency> {
      
//    Page<Inscription> findAll(Pageable pageable);
}   

