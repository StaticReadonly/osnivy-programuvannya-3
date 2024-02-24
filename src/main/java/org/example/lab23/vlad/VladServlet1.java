package org.example.lab23.vlad;

import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "vladServlet1", value = "/form1")
public class VladServlet1 extends AbstractVladServlet {

    public VladServlet1(){
        _formFile = "form1.jsp";
        _path = "/lab2_3_war_exploded/vlad-form1";
    }

    @Override
    public double calculate(double a, double b, double c, double d) {
        return Math.sqrt(Math.abs(Math.sin(a) - 4.0 * Math.log(b) / Math.pow(c, d)));
    }
}