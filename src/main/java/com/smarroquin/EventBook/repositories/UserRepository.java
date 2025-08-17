package com.smarroquin.EventBook.repositories;

import com.smarroquin.EventBook.models.User;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public class UserRepository {
    private static final Map<String, User> users = new HashMap<>();
    private static int idCounter = 1;

    static {
        users.put("admin@gmail.com", new User("admin", "admin@gmail.com", "admin123","ADMIN"));
        users.put("user@gmail.com", new User("user", "user@gmail.com", "user123","USER"));
    }

    public Optional<User> findByEmail(String email) {
        return Optional.ofNullable(users.get(email));
    }

    public void save(User user) {
        user.setId(idCounter++);
        users.put(user.getEmail(), user);
    }
}

