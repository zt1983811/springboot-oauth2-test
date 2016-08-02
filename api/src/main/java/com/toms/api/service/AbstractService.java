package com.toms.api.service;

import java.util.List;
import java.util.ArrayList;
//import org.springframework.data.jpa.domain.Sort;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;

public abstract class AbstractService implements InterfaceService
{
    public Sort getSortObject(String[] sorts)
    {
    	if (sorts == null || sorts.length == 0) {
            return null;
		}

        List<Order> sortList = new ArrayList<Order>(sorts.length);
        Direction direction;
        String[] oneSortSplit;

        for(String oneSort : sorts) {
            oneSortSplit = oneSort.split(":");
            if (oneSortSplit.length < 2 || oneSortSplit[1] == null) {
                direction = Sort.DEFAULT_DIRECTION;
            } else {
                direction = Sort.Direction.fromString(oneSortSplit[1]);
            }
            sortList.add(new Order(direction, oneSortSplit[0]));
        }

        return new Sort(sortList);
    }
}
