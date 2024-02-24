package org.example.lab23.vlad;

import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "vladServlet2", value = "/form2")
public class VladServlet2 extends AbstractVladServlet {
    public VladServlet2(){
        _formFile = "form2.jsp";
        _path = "/lab2_3_war_exploded/vlad-form2";
    }

    @Override
    public double calculate(double a, double b, double c, double d) {
        return (Math.exp(a) + 3 * Math.log10(c) * Math.abs(Math.atan(d))) / (Math.pow(b, 1 / c));
    }
}