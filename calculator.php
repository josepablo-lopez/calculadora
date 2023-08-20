<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $num1 = floatval($_POST["num1"]);
    $num2 = floatval($_POST["num2"]);
    $operation = $_POST["operation"];
    
    switch ($operation) {
        case "+":
            $result = $num1 + $num2;
            break;
        case "-":
            $result = $num1 - $num2;
            break;
        case "*":
            $result = $num1 * $num2;
            break;
        case "/":
            $result = $num1 / $num2;
            break;
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Calculator - PHP</title>
</head>
<body>
    <h1>Calculator - PHP</h1>
    <form method="post">
        <input type="number" name="num1" required>
        <select name="operation">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
        <input type="number" name="num2" required>
        <input type="submit" value="Calculate">
    </form>
    <?php if (isset($result)) { ?>
        <p>Result: <?php echo $result; ?></p>
    <?php } ?>
</body>
</html>
