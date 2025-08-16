package com.smarroquin.EventBook.service;

import com.smarroquin.EventBook.models.Event;
import com.smarroquin.EventBook.repositories.EventRepository;

import java.sql.Date;

public class EventService {
    private final EventRepository repository =  new  EventRepository();

    public void add(String name, Date date, String location){
        Event event = new Event(0, name, date, location);
        repository.add(event);
    }
}
