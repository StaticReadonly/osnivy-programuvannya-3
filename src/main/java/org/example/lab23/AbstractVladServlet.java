package org.example.lab23;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.util.ArrayList;
import java.util.Base64;

public abstract class AbstractVladServlet extends HttpServlet{
    protected String _path = "";
    protected String _formFile = "";

    public void init() {

    }

    //Calculate
    public abstract float calculate(float a, float b, float c, float d);

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
        try{
            FormData data = createFormDataFromCookie(request);
            request.setAttribute("formData", data);
        }catch (InvalidKeyException exc){
            response.sendError(400);
            return;
        }
        forwardToJspFile(request, response);
    }

    //POST handler
    public void doPost(
            HttpServletRequest request,
            HttpServletResponse response
    ) throws IOException, ServletException
    {
        FormData data = createFormDataFromRequest(request);
        fillResults(data);
        request.setAttribute("formData", data);
        writeCookie(data, response);
        forwardToJspFile(request, response);
    }

    private void fillResults(FormData formData){
        float epsilon = 0.00001F;
        ArrayList<Result> results = formData.getResults();

        for(float a = formData.getFromA(); a - formData.getToA() < epsilon; a += formData.getStepA()){
            for(float b = formData.getFromB(); b - formData.getToB() < epsilon; b += formData.getStepB()){
                for(float c = formData.getFromC(); c - formData.getToC() < epsilon; c += formData.getStepC()){
                    for(float d = formData.getFromD(); d - formData.getToD() < epsilon; d += formData.getStepD()){
                        Result newResult = new Result();
                        newResult.setA(a);
                        newResult.setB(b);
                        newResult.setC(c);
                        newResult.setD(d);
                        newResult.setRes(this.calculate(a,b,c,d));
                        results.add(newResult);
                    }
                }
            }
        }
    }

    private FormData createFormDataFromRequest(HttpServletRequest request){
        FormData res = new FormData();

        res.setFromA(Float.parseFloat(request.getParameter("fromA")));
        res.setToA(Float.parseFloat(request.getParameter("toA")));
        res.setStepA(Float.parseFloat(request.getParameter("stepA")));
        res.setFromB(Float.parseFloat(request.getParameter("fromB")));
        res.setToB(Float.parseFloat(request.getParameter("toB")));
        res.setStepB(Float.parseFloat(request.getParameter("stepB")));
        res.setFromC(Float.parseFloat(request.getParameter("fromC")));
        res.setToC(Float.parseFloat(request.getParameter("toC")));
        res.setStepC(Float.parseFloat(request.getParameter("stepC")));
        res.setFromD(Float.parseFloat(request.getParameter("fromD")));
        res.setToD(Float.parseFloat(request.getParameter("toD")));
        res.setStepD(Float.parseFloat(request.getParameter("stepD")));

        return res;
    }

    private FormData createFormDataFromCookie(HttpServletRequest request) throws InvalidKeyException {
        FormData res = new FormData();

        for (var c : request.getCookies()){
            if (c.getName().equals("formData")){
                String params = new String(Base64.getDecoder().decode(c.getValue()));

                String[] splitParams = params.split(";");
                for(var p : splitParams){
                    String[] keyValue = p.split("=");
                    switch(keyValue[0]){
                        case "fromA":   res.setFromA(Float.parseFloat(keyValue[1])); break;
                        case "toA":     res.setToA(Float.parseFloat(keyValue[1])); break;
                        case "stepA":   res.setStepA(Float.parseFloat(keyValue[1])); break;
                        case "fromB":   res.setFromB(Float.parseFloat(keyValue[1])); break;
                        case "toB":     res.setToB(Float.parseFloat(keyValue[1])); break;
                        case "stepB":   res.setStepB(Float.parseFloat(keyValue[1])); break;
                        case "fromC":   res.setFromC(Float.parseFloat(keyValue[1])); break;
                        case "toC":     res.setToC(Float.parseFloat(keyValue[1])); break;
                        case "stepC":   res.setStepC(Float.parseFloat(keyValue[1])); break;
                        case "fromD":   res.setFromD(Float.parseFloat(keyValue[1])); break;
                        case "toD":     res.setToD(Float.parseFloat(keyValue[1])); break;
                        case "stepD":   res.setStepD(Float.parseFloat(keyValue[1])); break;
                        default: throw new InvalidKeyException("Invalid parameter in cookie data");
                    }
                }
                return res;
            }
        }
        return res;
    }

    private void writeCookie(FormData data, HttpServletResponse response){
        StringBuilder builder = new StringBuilder();

        builder.append("fromA=");   builder.append(data.getFromA());    builder.append(';');
        builder.append("toA=");     builder.append(data.getToA());      builder.append(';');
        builder.append("stepA=");   builder.append(data.getStepA());    builder.append(';');
        builder.append("fromB=");   builder.append(data.getFromB());    builder.append(';');
        builder.append("toB=");     builder.append(data.getToB());      builder.append(';');
        builder.append("stepB=");   builder.append(data.getStepB());    builder.append(';');
        builder.append("fromC=");   builder.append(data.getFromC());    builder.append(';');
        builder.append("toC=");     builder.append(data.getToC());      builder.append(';');
        builder.append("stepC=");   builder.append(data.getStepC());    builder.append(';');
        builder.append("fromD=");   builder.append(data.getFromD());    builder.append(';');
        builder.append("toD=");     builder.append(data.getToD());      builder.append(';');
        builder.append("stepD=");   builder.append(data.getStepD());

        Cookie cookie = new Cookie("formData",  Base64.getEncoder().encodeToString(builder.toString().getBytes()));
        cookie.setPath(this._path);
        cookie.setHttpOnly(true);
        cookie.setSecure(true);
        cookie.setMaxAge(60 * 60 * 24);

        response.addCookie(cookie);
    }

    public void destroy() {
    }
}
