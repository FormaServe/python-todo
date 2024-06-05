

%#template to edit a task task
%#the template expects
%#a value for "old" as well
%# as a "no," the text of the selected ToDo item
%#add form template
<h3>Edit the task with ID = {{no}}</h3>
%# take form inputs
<form action="/edit/{{no}}" method="get">
    <input type="text" name="task" value="{{old[0]}}" size="100" maxlength="100">
      <select name="status">
       <option>open</option>
      <option>closed</option>
      </select>
      <br>
     <input type="submit" name="save" value="save">
</form>