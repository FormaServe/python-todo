<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FormaServe: ToDo</title>
    <link rel="stylesheet" type="text/css" href="/static/style.css">
    <link rel="icon" type="image/x-icon" href="/static/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>

<body>
    <div class="container">

        <h1><i class="fa-regular fa-calendar-days"></i> TODO Application: Add Item</h1>

        <form action="/new" method="GET">
            <input type="text" id="task" name="task" placeholder="Enter your todo item..." required>
            <select id="status">
                <option value="open">Open</option>
                <option value="closed">Closed</option>
              </select>
            <br><br><br>
            <button class="add-button" type="submit">
                <i class="fa-solid fa-floppy-disk"></i>&nbsp;&nbsp;Save
            </button>
            <a href="help" class="help-button"><i class="fa-solid fa-circle-info"></i>&nbsp;&nbsp;Help</a>
            <a href="/" class="back-button"><i class="fa-solid fa-skull-crossbones"></i>&nbsp;&nbsp;Back</a>
        </form>

    </div>
</body>

</html>