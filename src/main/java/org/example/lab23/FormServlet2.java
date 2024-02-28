package org.example.lab23;

import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "vladServlet2", value = "/form2")
public class FormServlet2 extends AbstractFormServlet {
    public FormServlet2(){
        _formFile = "form2-page.jsp";
        _path = "/lab2_3_war_exploded/form2";
    }

    @Override
    public float calculate(float a, float b, float c, float d) {
        return (float) ((Math.exp(a) + 3 * Math.log10(c) * Math.abs(Math.atan(d))) / (Math.pow(b, 1 / c)));
    }
}