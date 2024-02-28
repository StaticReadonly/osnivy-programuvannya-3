<%@ page import="org.example.lab23.FormData" %>
<%@ page import="org.example.lab23.Result" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    FormData formData = (FormData)request.getAttribute("formData");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Form 1</title>
    <link rel="stylesheet" href="css/form.css">
</head>
<body>
    <div class="main-container">
        <div class="image-container">
            <img src="images/equation1.png"/>
        </div>
        <form class="calculator-container" method="post">
            <div class="calculator-field">
                <div class="calculator-field-name">a</div>
                <div class="calculator-field-from">from:</div>
                <input class="calculator-field-input-from" type="number" value="<%=formData.getFromA()%>" step="0.01" name="fromA"/>
                <div class="calculator-field-to">to:</div>
                <input class="calculator-field-input-to" type="number" value="<%=formData.getToA()%>" step="0.01" name="toA"/>
                <div class="calculator-field-step">step:</div>
                <input class="calculator-field-input-step" type="number" value="<%=formData.getStepA()%>" step="0.01" name="stepA"/>
            </div>
            <div class="calculator-field">
                <div class="calculator-field-name">b</div>
                <div class="calculator-field-from">from:</div>
                <input class="calculator-field-input-from" type="number" value="<%=formData.getFromB()%>" step="0.01" name="fromB"/>
                <div class="calculator-field-to">to:</div>
                <input class="calculator-field-input-to" type="number" value="<%=formData.getToB()%>" step="0.01" name="toB"/>
                <div class="calculator-field-step">step:</div>
                <input class="calculator-field-input-step" type="number" value="<%=formData.getStepB()%>" step="0.01" name="stepB"/>
            </div>
            <div class="calculator-field">
                <div class="calculator-field-name">c</div>
                <div class="calculator-field-from">from:</div>
                <input class="calculator-field-input-from" type="number" value="<%=formData.getFromC()%>" step="0.01" name="fromC"/>
                <div class="calculator-field-to">to:</div>
                <input class="calculator-field-input-to" type="number" value="<%=formData.getToC()%>" step="0.01" name="toC"/>
                <div class="calculator-field-step">step:</div>
                <input class="calculator-field-input-step" type="number" value="<%=formData.getStepC()%>" step="0.01" name="stepC"/>
            </div>
            <div class="calculator-field">
                <div class="calculator-field-name">d</div>
                <div class="calculator-field-from">from:</div>
                <input class="calculator-field-input-from" type="number" value="<%=formData.getFromD()%>" step="0.01" name="fromD"/>
                <div class="calculator-field-to">to:</div>
                <input class="calculator-field-input-to" type="number" value="<%=formData.getToD()%>" step="0.01" name="toD"/>
                <div class="calculator-field-step">step:</div>
                <input class="calculator-field-input-step" type="number" value="<%=formData.getStepD()%>" step="0.01" name="stepD"/>
            </div>
            <div class="calculator-field-submit">
                <button class="calculator-submit-button" type="submit">
                    Calculate
                </button>
            </div>
        </form>
        <div class="results-container">
            <table>
                <thead>
                <tr>
                    <th>a</th>
                    <th>b</th>
                    <th>c</th>
                    <th>d</th>
                    <th>res</th>
                </tr>
                <tbody>
                <%
                    for(Result res : formData.getResults()){
                %>
                    <tr>
                        <td><%= String.format("%.2f", res.getA()) %></td>
                        <td><%= String.format("%.2f", res.getB()) %></td>
                        <td><%= String.format("%.2f", res.getC()) %></td>
                        <td><%= String.format("%.2f", res.getD()) %></td>
                        <td><%= res.getRes() %></td>
                    </tr>
                <%
                    }
                %>
        </tbody>
        </table>
    </div>
</div>
</body>
</html>
