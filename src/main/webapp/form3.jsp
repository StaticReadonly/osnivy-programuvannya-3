<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Form 3</title>
    <link rel="stylesheet" href="css/form.css">
</head>
<body>

<%!
    public double calculateResult(double a, double b, double c, double d) {
        return Math.pow(2.0 * Math.sin(a) + Math.cos(Math.abs(b * Math.sqrt(c))), d);
    }
%>
<%
    String from_a = "0";
    String to_a = "0";
    String step_a = "0";

    String from_b = "0";
    String to_b = "0";
    String step_b = "0";

    String from_c = "0";
    String to_c = "0";
    String step_c = "0";

    String from_d = "0";
    String to_d = "0";
    String step_d = "0";

    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            switch (cookie.getName()) {
                case "from_a":
                    from_a = cookie.getValue();
                    break;
                case "to_a":
                    to_a = cookie.getValue();
                    break;
                case "step_a":
                    step_a = cookie.getValue();
                    break;
                case "from_b":
                    from_b = cookie.getValue();
                    break;
                case "to_b":
                    to_b = cookie.getValue();
                    break;
                case "step_b":
                    step_b = cookie.getValue();
                    break;
                case "from_c":
                    from_c = cookie.getValue();
                    break;
                case "to_c":
                    to_c = cookie.getValue();
                    break;
                case "step_c":
                    step_c = cookie.getValue();
                    break;
                case "from_d":
                    from_d = cookie.getValue();
                    break;
                case "to_d":
                    to_d = cookie.getValue();
                    break;
                case "step_d":
                    step_d = cookie.getValue();
                    break;
                default:
                    break;
            }
        }
    }

    String newValueFA = request.getParameter("from_a");
    String newValueTA = request.getParameter("to_a");
    String newValueSA = request.getParameter("step_a");

    String newValueFB = request.getParameter("from_b");
    String newValueTB = request.getParameter("to_b");
    String newValueSB = request.getParameter("step_b");

    String newValueFC = request.getParameter("from_c");
    String newValueTC = request.getParameter("to_c");
    String newValueSC = request.getParameter("step_c");

    String newValueFD = request.getParameter("from_d");
    String newValueTD = request.getParameter("to_d");
    String newValueSD = request.getParameter("step_d");

    if (newValueFA != null && !newValueFA.isEmpty()) {
        from_a = newValueFA;
        Cookie cookieFA = new Cookie("from_a", from_a);
        response.addCookie(cookieFA);
    }
    if (newValueTA != null && !newValueTA.isEmpty()) {
        to_a = newValueTA;
        Cookie cookieTA = new Cookie("to_a", to_a);
        response.addCookie(cookieTA);
    }
    if (newValueSA != null && !newValueSA.isEmpty()) {
        step_a = newValueSA;
        Cookie cookieSA = new Cookie("step_a", step_a);
        response.addCookie(cookieSA);
    }

    if (newValueFB != null && !newValueFB.isEmpty()) {
        from_b = newValueFB;
        Cookie cookieFB = new Cookie("from_b", from_b);
        response.addCookie(cookieFB);
    }
    if (newValueTA != null && !newValueTA.isEmpty()) {
        to_b = newValueTB;
        Cookie cookieTB = new Cookie("to_b", to_b);
        response.addCookie(cookieTB);
    }
    if (newValueSB != null && !newValueSB.isEmpty()) {
        step_b = newValueSB;
        Cookie cookieSB = new Cookie("step_b", step_b);
        response.addCookie(cookieSB);
    }

    if (newValueFC != null && !newValueFC.isEmpty()) {
        from_c = newValueFC;
        Cookie cookieFC = new Cookie("from_c", from_c);
        response.addCookie(cookieFC);
    }
    if (newValueTC != null && !newValueTC.isEmpty()) {
        to_c = newValueTC;
        Cookie cookieTC = new Cookie("to_c", to_c);
        response.addCookie(cookieTC);
    }
    if (newValueSC != null && !newValueSC.isEmpty()) {
        step_c = newValueSC;
        Cookie cookieSC = new Cookie("step_c", step_c);
        response.addCookie(cookieSC);
    }

    if (newValueFD != null && !newValueFD.isEmpty()) {
        from_d = newValueFD;
        Cookie cookieFD = new Cookie("from_d", from_d);
        response.addCookie(cookieFD);
    }
    if (newValueTD != null && !newValueTD.isEmpty()) {
        to_d = newValueTD;
        Cookie cookieTD = new Cookie("to_d", to_d);
        response.addCookie(cookieTD);
    }
    if (newValueSD != null && !newValueSD.isEmpty()) {
        step_d = newValueSD;
        Cookie cookieSD = new Cookie("step_d", step_d);
        response.addCookie(cookieSD);
    }
%>
<div class="main-container">
    <div class="image-container">
        <img src="images/equation3.png"/>
    </div>
    <form class="calculator-container" method="post">
        <div class="calculator-field">
            <div class="calculator-field-name">a</div>
            <div class="calculator-field-from">from:</div>
            <input class="calculator-field-input-from" type="number" value="<%=from_a%>" step="0.01" name="from_a"/>
            <div class="calculator-field-to">to:</div>
            <input class="calculator-field-input-to" type="number" value="<%=to_a%>" step="0.01" name="to_a"/>
            <div class="calculator-field-step">step:</div>
            <input class="calculator-field-input-step" type="number" value="<%=step_a%>" step="0.01" name="step_a"/>
        </div>
        <div class="calculator-field">
            <div class="calculator-field-name">b</div>
            <div class="calculator-field-from">from:</div>
            <input class="calculator-field-input-from" type="number" value="<%=from_b%>" step="0.01" name="from_b"/>
            <div class="calculator-field-to">to:</div>
            <input class="calculator-field-input-to" type="number" value="<%=to_b%>" step="0.01" name="to_b"/>
            <div class="calculator-field-step">step:</div>
            <input class="calculator-field-input-step" type="number" value="<%=step_b%>" step="0.01" name="step_b"/>
        </div>
        <div class="calculator-field">
            <div class="calculator-field-name">c</div>
            <div class="calculator-field-from">from:</div>
            <input class="calculator-field-input-from" type="number" value="<%=from_c%>" step="0.01" name="from_c"/>
            <div class="calculator-field-to">to:</div>
            <input class="calculator-field-input-to" type="number" value="<%=to_c%>" step="0.01" name="to_c"/>
            <div class="calculator-field-step">step:</div>
            <input class="calculator-field-input-step" type="number" value="<%=step_c%>" step="0.01" name="step_c"/>
        </div>
        <div class="calculator-field">
            <div class="calculator-field-name">d</div>
            <div class="calculator-field-from">from:</div>
            <input class="calculator-field-input-from" type="number" value="<%=from_d%>" step="0.01" name="from_d"/>
            <div class="calculator-field-to">to:</div>
            <input class="calculator-field-input-to" type="number" value="<%=to_d%>" step="0.01" name="to_d"/>
            <div class="calculator-field-step">step:</div>
            <input class="calculator-field-input-step" type="number" value="<%=step_d%>" step="0.01" name="step_d"/>
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
        if (request.getMethod().equalsIgnoreCase("post")) {
            double from_A ;
            double from_B ;
            double from_C ;
            double from_D ;

            double to_A ;
            double to_B ;
            double to_C ;
            double to_D ;

            double step_A ;
            double step_B ;
            double step_C ;
            double step_D ;

            try {
                from_A = Double.parseDouble(request.getParameter("from_a"));
                from_B = Double.parseDouble(request.getParameter("from_b"));
                from_C = Double.parseDouble(request.getParameter("from_c"));
                from_D = Double.parseDouble(request.getParameter("from_d"));

                to_A = Double.parseDouble(request.getParameter("to_a"));
                to_B = Double.parseDouble(request.getParameter("to_b"));
                to_C = Double.parseDouble(request.getParameter("to_c"));
                to_D = Double.parseDouble(request.getParameter("to_d"));

                step_A = Double.parseDouble(request.getParameter("step_a"));
                step_B = Double.parseDouble(request.getParameter("step_b"));
                step_C = Double.parseDouble(request.getParameter("step_c"));
                step_D = Double.parseDouble(request.getParameter("step_d"));

            }catch(NumberFormatException e){
                response.sendError(400, "Дані введені не коректно");
                return;
            }


            for (double a = from_A; a <= to_A; a += step_A) {
                for (double b = from_B; b <= to_B; b += step_B) {
                    for (double c = from_C; c <= to_C; c += step_C) {
                        for (double d = from_D; d <= to_D; d += step_D) {
                            double res = calculateResult( a,  b,  c,  d);

    %>

            <tr>
                <td><%= a %></td>
                <td><%= b %></td>
                <td><%= c %></td>
                <td><%= d %></td>
                <td><%= res %></td>
            </tr>

            <%
                                }
                            }
                        }
                    }
                }

    %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
