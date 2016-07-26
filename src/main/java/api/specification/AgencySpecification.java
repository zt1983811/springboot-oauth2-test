package api.specification;

import org.springframework.data.jpa.domain.Specification;
 
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;
import java.util.ArrayList;
import java.lang.Byte;

import api.domain.Agency;


public class AgencySpecification
{
    public static Specification<Agency> statusNameIn(String[] statusNames) 
    {
        if (statusNames == null || statusNames.length == 0) {
            return null;
        }

        return (root, query, cb) -> {

            Agency agency = new Agency();
            List<Byte> statusIds = new ArrayList<Byte>();
            for (String oneStatusName : statusNames) {
//                statusIds.add(agency.getStatusIdByName(oneStatusName));
            }

            return cb.isTrue(root.<String>get("status").in(statusIds));
        };
    }

//    public static Specification<Inscription> statusNameIn() {
//        return new Specification<Inscription> {
//            @Override
//            public Predicate toPredicate(Root<T> root, CriteriaQuery query, CriteriaBuilder cb) {
//                return cb.equal(root.get(Customer_.birthday), today);
//            }
//        };
//    }
}
