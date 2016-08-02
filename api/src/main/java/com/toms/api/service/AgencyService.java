package com.toms.api.service;

import com.toms.api.repository.hibernate.HAgencyRepository;
import com.toms.api.model.hibernateDomain.Agency;
//import com.toms.api.model.domain.Agency;
import com.toms.api.specification.AgencySpecification;

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

    public Agency save(Agency agency)
    {
        return agencyRepository.save(agency);
    }
}
