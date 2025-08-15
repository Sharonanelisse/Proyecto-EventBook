package com.smarroquin.EventBook.models;

import java.time.LocalDate;

public class Event {
    private int id;
    private String name;
    private LocalDate date;
    private String location;


    public Event(String name, LocalDate date, String location) {
        this.name = name;
        this.date = date;
        this.location = location;
    }

    public int getId() {return id;}
    public String getName() {return name;}
    public LocalDate getDate() {return date;}
    public String getLocation() {return location;}

    public void setId(int id) {this.id = id;}
    public void setName(String name) {this.name = name;}
    public void setDate(LocalDate date) {this.date = date;}
    public void setLocation(String location) {this.location = location;}
}