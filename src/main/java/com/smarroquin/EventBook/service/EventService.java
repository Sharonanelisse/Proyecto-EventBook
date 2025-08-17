package com.smarroquin.EventBook.service;

import com.smarroquin.EventBook.models.Event;
import com.smarroquin.EventBook.repositories.EventRepository;

import java.sql.Date;
import java.util.List;

public class EventService {

    private final EventRepository repository = new EventRepository();

    public void add(String name, Date date, String location) {
        long id = repository.nextId();
        Event event = new Event(id, name, date, location);
        repository.add(event);
    }

    public List<Event> findAll() {
        return repository.findAll();
    }

    public void delete(long id) {
        repository.deleteEvent(id);
    }
}
