package org.example.lab23.vlad;

import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "vladServlet3", value = "/form3")
public class VladServlet3 extends AbstractVladServlet {
    public VladServlet3(){
        _formFile = "form3.jsp";
        _path = "/lab2_3_war_exploded/vlad-form3";
    }

    @Override
    public double calculate(double a, double b, double c, double d) {
        return Math.pow(2.0 * Math.sin(a) + Math.cos(Math.abs(b * Math.sqrt(c))), d);
    }
}