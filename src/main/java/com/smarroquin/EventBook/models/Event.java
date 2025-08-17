package com.smarroquin.EventBook.models;

import java.sql.Date;

public class Event {
    private long id;
    private String name;
    private Date date;
    private String location;

    public Event(long id, String name, Date date, String location) {
        this.id = id;
        this.name = name;
        this.date = date;
        this.location = location;
    }

    public long getId() { return id; }
    public String getName() { return name; }
    public Date getDate() { return date; }
    public String getLocation() { return location; }

    public void setId(long id) { this.id = id; }
    public void setName(String name) { this.name = name; }
    public void setDate(Date date) { this.date = date; }
    public void setLocation(String location) { this.location = location; }
}
