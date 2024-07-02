<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FormaServe: ToDo</title>
  <link rel="stylesheet" type="text/css" href="/static/style.css">
  <link rel="icon" type="image/x-icon" href="/static/favicon.ico">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <!-- Poppins Font from Google Fonts -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>
  <div class="container">
    <h1><i class="fa-regular fa-calendar-days"></i>&nbsp;&nbsp;TODO Application: All Items</h1>
    <table class="styled-table">
      <thead>
        <tr>
          <th>Edit</th>
          <th>ID</th>
          <th class="text-left">Text</th>
          <th>Status</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody>
        %for row in rows:
        <tr>
          <td class="text-centre"><a href="/edit/{{ row[0] }}"><i class="fa-solid fa-pen-to-square"></i></a></td>
          <td class="text-centre">{{ row[0] }}</td>
          <td class="text-left">{{ row[1] }}</td>
          <td class="text-centre">{{ row[2] }}</td>
          <td class="text-centre"><a href="/delete/{{ row[0] }}"><i class="fa-solid fa-trash"></i></a></td>
        </tr>
        %end
      </tbody>
    </table>

    <a href="new" class="add-button"><i class="fa-regular fa-square-plus"></i>&nbsp;&nbsp;New Task</a>
    <a href="help" class="help-button"><i class="fa-solid fa-circle-info"></i>&nbsp;&nbsp;Help</a>

  </div>
</body>

</html>