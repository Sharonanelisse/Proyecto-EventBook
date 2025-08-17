package com.smarroquin.EventBook.repositories;

import com.smarroquin.EventBook.models.Event;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public class EventRepository {

    public static final List<Event> events = new ArrayList<>();
    private static final AtomicLong Id = new AtomicLong(0);

    static {
        events.add(new Event(Id.incrementAndGet(), "Boda", Date.valueOf("2025-12-15"), "Mixco"));
    }

    public List<Event> findAll() {
        return events;
    }

    public void add(Event event) {
        events.add(event);
    }

    public long nextId() {
        return Id.incrementAndGet();
    }

    public void deleteEvent(long id) {
        events.removeIf(e -> e.getId() == id);
    }
}
