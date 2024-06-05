# FormaServe Training - Python Examples

<img src="/images/Logo.png" align="right">

This repository showcases FormaServe’s training capabilities and provides a simple TODO application that runs on any platform, including the IBM i.

## Features

* Add, edit, and delete TODO items.
* Mark items as completed.
* Cross-platform compatibility.

## Installation

* Clone this repository to your local machine.
* Install the necessary dependencies (e.g., Node.js, Python, etc.).
* Run the application using the provided scripts.

## Usage

* Open a terminal or command prompt.
* Clone this repository
* Navigate to the project directory.
* Execute the following commands:

## Install dependencies

```bash
pip install bottle

```

## Create the SQLite Database

```python3
python create-db.py
```

## Start the TODO app

```bash
python index.py
```

Then in an internet browser, open the application at the following URL
http://localhost:8080/

## Virtual Environment

As with all python projects, it is recommended to run this application in a virtual environment.  Follow the instructions below to get started.

### Create the Virtual Environment

Use the venv module to create a virtual environment inside the project folder. Run the following command:

```bash
python3 -m venv my_venv
```

Replace my_venv with your preferred name for the virtual environment.

### Activate the Virtual Environment

To activate the virtual environment, use the appropriate command based on your operating system:\

#### On Windows

```bash
my_venv\Scripts\activate
```

#### On macOS, Linux or IBM i

```bash
source my_venv/bin/activate
```

### Deactivate the Virtual Environment

When you’re done working in the virtual environment, deactivate it:

```bash
deactivate
```

Remember to activate it whenever you work on your project. 😊

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Authors

* FormaServe Systems Ltd - *All work* - [FormaServe](https://www.formaserve.co.uk)

## Acknowledgments

* Andy Youens - FormaServe Systems Ltd 1990 - All rights reserved.
* Nick Youens - FormaServe Systems Ltd 1990 - All rights reserved.
* Jane Youens - FormaServe Systems Ltd 1990 - All rights reserved.

## Copyright © 2024 FormaServe Systems Ltd
