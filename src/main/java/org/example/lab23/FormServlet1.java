package org.example.lab23;

import jakarta.servlet.annotation.WebServlet;

@WebServlet(name = "vladServlet1", value = "/form1")
public class FormServlet1 extends AbstractFormServlet {

    public FormServlet1(){
        _formFile = "form1-page.jsp";
        _path = "/lab2_3_war_exploded/form1";
    }

    @Override
    public float calculate(float a, float b, float c, float d) {
        return (float)Math.sqrt(Math.abs(Math.sin(a) - 4.0F * Math.log(b) / Math.pow(c, d)));
    }
}