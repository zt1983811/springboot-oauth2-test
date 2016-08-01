package com.service;

import com.repository.hibernate.HAgencyRepository;
import com.model.hibernateDomain.Agency;
//import com.model.domain.Agency;
import com.specification.AgencySpecification;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.data.domain.Sort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AgencyService extends AbstractService
{
    @Autowired
    private HAgencyRepository agencyRepository;

    public Page<Agency> findAll(Specification specs,  String[] sorts, int offset, int limit, String[] status)
    {
        Specification<Agency> specStatusNameIn = AgencySpecification.statusNameIn(status);
        Specification<Agency> spec = Specifications.where(specs).or(specStatusNameIn);
        Sort sort = getSortObject(sorts);
        Page<Agency> agencies = agencyRepository.findAll(spec, new PageRequest(offset, limit, sort));
        return agencies;
    }

    public Agency findOne(int id)
    {
        return agencyRepository.findOne(id);
    }
}
