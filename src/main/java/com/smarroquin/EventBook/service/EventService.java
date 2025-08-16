package com.smarroquin.EventBook.service;

import com.smarroquin.EventBook.models.Event;
import com.smarroquin.EventBook.repositories.EventRepository;

import java.sql.Date;
import java.util.List;

public class EventService {

    private final EventRepository repository = new EventRepository();

    // Agregar evento
    public void add(String name, Date date, String location) {
        long id = repository.nextId(); // Genera ID único
        Event event = new Event(id, name, date, location);
        repository.add(event);
    }

    // Listar todos los eventos
    public List<Event> findAll() {
        return repository.findAll();
    }
}
