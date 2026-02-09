package com.Ticket_Booking_System.controller;

import java.time.LocalDate;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Ticket_Booking_System.model.Booking;
import com.Ticket_Booking_System.repository.BookingRepository;
import com.Ticket_Booking_System.service.BookingService;


@Controller
public class BookingController {
	@Autowired
	private BookingService bookingService;

    @Autowired
    private BookingRepository repo;

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/details")
    public String details(@RequestParam("mode") String mode, Model model) {
        model.addAttribute("mode", mode);
        return "details";
    }


    @PostMapping("/destination")
    public String destination(@RequestParam Map<String, String> params, Model model) {
        model.addAllAttributes(params);
        return "destination";
    }

    @PostMapping("/summary")
    public String summary(@RequestParam Map<String, String> params, Model model) {
        model.addAllAttributes(params);
        return "summary";
    }

    @PostMapping("/submit")
    public String submit(@RequestParam Map<String, String> params, Model model) {
    	Booking b = bookingService.createBooking(params);
    	model.addAttribute("status", "Successful");
    	model.addAttribute("id", b.getId());
    	return "acknowledgment";

    }

    @GetMapping("/view")
    public String view(@RequestParam Long id, Model model) {
    	Booking b = bookingService.getBooking(id);
    	model.addAttribute("booking", b);
    	return "view";

    }

    @GetMapping("/edit")
    public String edit(@RequestParam Long id, Model model) {
    	Booking b = bookingService.getBooking(id);
    	model.addAttribute("booking", b);
    	return "edit";

    }

    @PostMapping("/update")
    public String update(@RequestParam Map<String, String> params) {
    	Booking b = bookingService.updateBooking(params);
    	return "redirect:/view?id=" + b.getId();
}
}

