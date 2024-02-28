package org.example.lab23;

import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "vladServlet3", value = "/form3")
public class FormServlet3 extends AbstractFormServlet {
    public FormServlet3(){
        _formFile = "form3-page.jsp";
        _path = "/lab2_3_war_exploded/form3";
    }

    @Override
    public float calculate(float a, float b, float c, float d) {
        return (float)Math.pow(2.0 * Math.sin(a) + Math.cos(Math.abs(b * Math.sqrt(c))), d);
    }
}