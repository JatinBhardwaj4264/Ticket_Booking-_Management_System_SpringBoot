package com.Ticket_Booking_System.repository;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.Ticket_Booking_System.model.Booking;
@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {}

