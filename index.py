'''
 FormaServe IBM i Training

 Main index file for the TODO training application.

 To install follow the instructions in the readme file and make note of the licensing requirements.

 For full disclaimer see https://www.formaserve.co.uk/examples.php

 © - FormaServe Systems Ltd.  1990 - 2024

 www.FormaServe.co.uk
 powerwire.eu

'''

# imports
import sqlite3
from bottle import route, debug, run, template, static_file, error, request


@route('/static/<filename>')
def server_static(filename):
    '''
    create static file routes, used for CSS and static HTML
    '''
    return static_file(filename, root='./static')


@route('/')
@route('/index')
def todo_list():
    '''
    Main index

    show all TODO entries
    '''

    conn = sqlite3.connect('todo.db')
    c = conn.cursor()

    sql = "SELECT id, task, CASE WHEN status = 1 THEN 'Open' ELSE 'Closed' END AS status_description FROM todo;"

    c.execute(sql)
    result = c.fetchall()
    c.close()

    output = template('todo-all', rows=result)

    return output


@route('/new', method='GET')
def new():
    '''
    Create new TODO entry
    '''

    if request.GET.save:
        new = request.GET.task.strip()
        conn = sqlite3.connect('todo.db')
        c = conn.cursor()
        c.execute("INSERT INTO todo (task,status) VALUES (?,?)", (new, 1))
        new_id = c.lastrowid
        conn.commit()
        conn.close()
        return '<h3>The new task was inserted into the database, the ID is %s</h3>' % new_id
    else:
        return template('todo-new')


@route('/edit/<no:int>', method='GET')
def edit_item(no):
    '''
    edit an existing TODO item
    '''

    if request.GET.save:
        edit = request.GET.task.strip()
        status = request.GET.status.strip()

        if status == 'Open':
            # change status value to 1
            status = 1
            # else make the status value 0.
        else:
            # change status value to 1
            status = 0

        conn = sqlite3.connect('todo.db')
        c = conn.cursor()
        c.execute(
            "UPDATE todo SET task = ?, status = ? WHERE id LIKE ?", (edit, status, no))
        conn.commit()

        return '<p>The item number %s was successfully updated</p>' % no
    else:
        conn = sqlite3.connect('todo.db')
        c = conn.cursor()
        c.execute("SELECT task FROM todo WHERE id LIKE ?", (str(no)))
        cur_data = c.fetchone()

    return template('todo-edit', old=cur_data, no=no)


@route('/delete/<no:int>', method='GET')
def delete_item(no):
    '''
    delete a todo item
    '''

    conn = sqlite3.connect('todo.db')
    c = conn.cursor()
    c.execute("DELETE from todo WHERE id LIKE ?", (str(no)))
    conn.commit()

    return '<h3>The item number %s was successfully deleted!</h3>' % no


@route('/item<item:re:[0-9]+>')
def show_item(item):
    conn = sqlite3.connect('todo.db')
    c = conn.cursor()
    c.execute("SELECT task FROM todo WHERE id LIKE ?", (item,))
    result = c.fetchall()
    conn.close()

    if not result:
        return 'This item number does not exist!'
    else:
        return 'Task: %s' % result[0]


@route('/help')
def help():
    # Serve the 'help.html' file from the 'static' directory
    return static_file('help.html', root='./static')


@route('/json<json:re:[0-9]+>')
def show_json(json):
    conn = sqlite3.connect('todo.db')
    cur = conn.cursor()
    cur.execute("SELECT task FROM todo WHERE id LIKE ?", (json,))
    result = cur.fetchall()
    conn.close()

    # return message
    if not result:
        return {'task': 'This item number does not exist!'}
    # return task
    else:
        return {'task': result[0]}


@error(403)
def error403(code):
    return 'There is a mistake in your URL!'


@error(404)
def mistake404(code):
    return 'Sorry, this page does not exist!'


# start the server http://localhost:8080
run(host='localhost', port=8080, debug=True, reloader=True)
