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
                <input class="calculator-field-input-from" type="number" value="0" step="0.01" name="from_a"/>
                <div class="calculator-field-to">to:</div>
                <input class="calculator-field-input-to" type="number" value="0" step="0.01" name="to_a"/>
                <div class="calculator-field-step">step:</div>
                <input class="calculator-field-input-step" type="number" value="0" step="0.01" name="step_a"/>
            </div>
            <div class="calculator-field">
                <div class="calculator-field-name">b</div>
                <div class="calculator-field-from">from:</div>
                <input class="calculator-field-input-from" type="number" value="0" step="0.01" name="from_b"/>
                <div class="calculator-field-to">to:</div>
                <input class="calculator-field-input-to" type="number" value="0" step="0.01" name="to_b"/>
                <div class="calculator-field-step">step:</div>
                <input class="calculator-field-input-step" type="number" value="0" step="0.01" name="step_b"/>
            </div>
            <div class="calculator-field">
                <div class="calculator-field-name">c</div>
                <div class="calculator-field-from">from:</div>
                <input class="calculator-field-input-from" type="number" value="0" step="0.01" name="from_c"/>
                <div class="calculator-field-to">to:</div>
                <input class="calculator-field-input-to" type="number" value="0" step="0.01" name="to_c"/>
                <div class="calculator-field-step">step:</div>
                <input class="calculator-field-input-step" type="number" value="0" step="0.01" name="step_c"/>
            </div>
            <div class="calculator-field">
                <div class="calculator-field-name">d</div>
                <div class="calculator-field-from">from:</div>
                <input class="calculator-field-input-from" type="number" value="0" step="0.01" name="from_d"/>
                <div class="calculator-field-to">to:</div>
                <input class="calculator-field-input-to" type="number" value="0" step="0.01" name="to_d"/>
                <div class="calculator-field-step">step:</div>
                <input class="calculator-field-input-step" type="number" value="0" step="0.01" name="step_d"/>
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
                </thead>
                <tbody>
                    <tr>
                        <td>0.0</td>
                        <td>0.0</td>
                        <td>0.0</td>
                        <td>0.0</td>
                        <td>0.0</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>