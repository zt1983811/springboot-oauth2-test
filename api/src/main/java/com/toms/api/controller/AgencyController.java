package com.toms.api.controller;

import com.toms.api.specification.AgencySpecification;
//import com.toms.api.model.domain.Agency;
import com.toms.api.model.hibernateDomain.Agency;
import com.toms.api.service.AgencyService;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.PageRequest;

import net.kaczmarzyk.spring.data.jpa.domain.DateBefore;
import net.kaczmarzyk.spring.data.jpa.domain.DateBetween;
import net.kaczmarzyk.spring.data.jpa.domain.Like;
import net.kaczmarzyk.spring.data.jpa.domain.In;
import net.kaczmarzyk.spring.data.jpa.web.annotation.And;
import net.kaczmarzyk.spring.data.jpa.web.annotation.Conjunction;
import net.kaczmarzyk.spring.data.jpa.web.annotation.Or;
import net.kaczmarzyk.spring.data.jpa.web.annotation.Spec;

import org.springframework.data.jpa.domain.Specification;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;

@RestController
@RequestMapping(value = "/agencies", produces = MediaType.APPLICATION_JSON_VALUE)
public class AgencyController
{
    @Autowired
    private AgencyService agencyService;

    // 
    // Exmaple: offset=0&limit=200&statusId=3&status=sold&status=sale&sorts=status:DESC&sorts=noInscription:DESC
    //
    @RequestMapping(method = RequestMethod.GET)
    public Page<Agency> findAll(
        final @RequestParam(defaultValue = "0", required = false) int offset,
        final @RequestParam(defaultValue = "20", required = false) int limit,
        final @RequestParam(required = false) String[] sorts,
        final @RequestParam(required = false) String[] status,
        @Or({
            @Spec(params = "statusId", path = "status", spec = In.class)
        }) Specification<Agency> spec
    )
    {
        Page<Agency> agencies = agencyService.findAll(spec, sorts, offset, limit, status);
        return agencies;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Agency findOne(@PathVariable int id)
    {
        return agencyService.findOne(id);
    }

    @RequestMapping(value = "/{agency}", method = RequestMethod.PUT)
    public Agency update(@ModelAttribute Agency agency)
    {
        return agencyService.save(agency); 
    }
}
