package com.Ticket_Booking_System.service;

import java.time.LocalDate;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Ticket_Booking_System.model.Booking;
import com.Ticket_Booking_System.repository.BookingRepository;

@Service
public class BookingService {

    @Autowired
    private BookingRepository repo;

    public Booking createBooking(Map<String, String> params) {
        Booking b = new Booking();
        b.setMode(params.get("mode"));
        b.setName(params.get("name"));
        b.setEmail(params.get("email"));
        b.setPhone(params.get("phone"));
        b.setAddress(params.get("address"));
        b.setDob(LocalDate.parse(params.get("dob")));
        b.setDestination(params.get("destination"));
        return repo.save(b);
    }

    public Booking getBooking(Long id) {
        return repo.findById(id).orElse(null);
    }

    public Booking updateBooking(Map<String, String> params) {
        Booking b = repo.findById(Long.parseLong(params.get("id"))).orElse(null);
        if (b != null) {
            b.setName(params.get("name"));
            b.setEmail(params.get("email"));
            b.setPhone(params.get("phone"));
            b.setAddress(params.get("address"));
            b.setDob(LocalDate.parse(params.get("dob")));
            b.setDestination(params.get("destination"));
            repo.save(b);
        }
        return b;
    }
}
