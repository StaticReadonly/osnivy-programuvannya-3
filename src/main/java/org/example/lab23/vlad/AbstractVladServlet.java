package org.example.lab23.vlad;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public abstract class AbstractVladServlet extends HttpServlet{
    protected String _path = "";
    protected String _formFile = "";

    public void init() {

    }

    //Calculate
    public abstract double calculate(double a, double b, double c, double d);

    //Forward request to jsp file
    public void forwardToJspFile(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher(_formFile).forward(request, response);
    }

    //GET handler
    public void doGet(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws IOException, ServletException
    {
        forwardToJspFile(request, response);
    }

    //POST handler
    public void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws IOException, ServletException
    {
        forwardToJspFile(request, response);
    }

    public void destroy() {
    }
}
