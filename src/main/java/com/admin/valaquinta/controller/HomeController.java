package com.admin.valaquinta.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Controlador principal para la landing page de V⁵ - Ve a la Quinta
 */
@Controller
public class HomeController {

    @Value("${app.whatsapp.number:519XXXXXXXX}")
    private String whatsappNumber;

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("whatsappUrl", "https://wa.me/" + whatsappNumber.replaceAll("[^0-9]", ""));
        return "index";
    }
}
