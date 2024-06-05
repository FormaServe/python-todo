<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ToDo</title>
    <link rel="stylesheet" type="text/css" href="./static/style.css">
    <link rel="icon" type="image/x-icon" href="./static/favicon.ico">
    <script src="https://kit.fontawesome.com/7e02145d4d.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">

        <h1><i class="fa-regular fa-calendar-days"></i> TODO Application: Add Item</h1>

        <form action="/new" method="GET">
            <input type="text" size="100" maxlength="100" name="task">
            <br><br><br>
            <input type="submit" name="save" value="save">
        </form>

    </div>
</body>

</html>