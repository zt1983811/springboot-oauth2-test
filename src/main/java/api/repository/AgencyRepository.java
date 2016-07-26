package api.repository;

import api.domain.Agency;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;                      
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

      
public interface AgencyRepository extends PagingAndSortingRepository<Agency, String>, JpaSpecificationExecutor<Agency> {
      
//    Page<Inscription> findAll(Pageable pageable);
}   

