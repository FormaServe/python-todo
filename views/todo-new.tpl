<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FormaServe: ToDo</title>
    <link rel="stylesheet" type="text/css" href="/static/style.css">
    <link rel="icon" type="image/x-icon" href="/static/favicon.ico">
    <script src="https://kit.fontawesome.com/7e02145d4d.js" crossorigin="anonymous"></script>
</head>

<body>
    <div class="container">

        <h1><i class="fa-regular fa-calendar-days"></i> TODO Application: Add Item</h1>

        <form action="/new" method="GET">
            <input type="text" id="task" name="task" placeholder="Enter your todo item..." required>
            <br><br><br>
            <input class="add-button" type="submit" name="save" value="Save">
        </form>

    </div>
</body>

</html>