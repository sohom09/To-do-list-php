# 📝 To-Do List Web Application (PHP, MySQL, Bootstrap, JS)

[![Languages](https://img.shields.io/github/languages/top/sohom09/To-do-list-php)](https://github.com/sohom09/To-do-list-php)
[![Last Commit](https://img.shields.io/github/last-commit/sohom09/To-do-list-php)](https://github.com/sohom09/To-do-list-php)
[![Repo Size](https://img.shields.io/github/repo-size/sohom09/To-do-list-php)](https://github.com/sohom09/To-do-list-php)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A secure and responsive **To-Do List Web Application** built using **PHP**, **MySQL**, **Bootstrap**, **JavaScript**, **HTML**, and **CSS**. This project allows users to register, log in, reset their password, and manage personal to-dos — all from a modern and mobile-friendly UI.

---

## 🔧 Features

🔐 **User Authentication**
  - ✅ User **Registration**, **Login**, **Logout**
  - 🔐 **Forgot Password** and **Reset Password**
  - 🧠 Session-based Authentication for secured access

✅ **Task Management**
  - ➕ Add New Tasks
  - 📝 Edit Task Details
  - ✅ Mark tasks as **Completed** or **Pending**
  - 🗑️ Delete Tasks
  - 📅 Set Task Due Dates *(optional)*
  - 🎨 Responsive UI with **Bootstrap 5**

🎨 **Clean UI & UX**
  - Responsive layout with **Bootstrap 5**
  - Dark theme with a modern, elegant interface


---

## 🛠️ Tech Stack

| Layer        | Technology        | Version              |
|--------------|-------------------|----------------------|
| Frontend     | **HTML**          | HTML5                |
|              | **CSS**           | CSS3                 |
|              | **Bootstrap**     | 5.3.x                |
|              | **JavaScript**    | ES6 (ECMAScript 2015+) |
| Backend      | **PHP**           | 8.x                  |
| Database     | **MySQL**         | 8.x                  |
| Web Server   | **Apache**        | via XAMPP/LAMP/WAMP  |

---

## 📁 Project Structure

```bash
- todo-list-app/
--├── addTask.php
--├── app.php
--├── connection.php
--├── deleteTask.php
--├── forgotPassword.php
--├── login.php
--├── loginProcess.php
--├── logout.php
--├── markunmarkTask.php
--├── README.md
--├── register.php
--├── registerProcess.php
--├── resetPassword.php
--├── styles/
---│ ├── app.css
---│ ├── loginStyle.css
---│ └── registerStyle.css
--├── todo.sql
--└── todo_db.sql

```
---

## 🚀 Getting Started

### ✅ Requirements

- PHP 8.x
- MySQL 8.x or MariaDB
- Web Server (e.g. **XAMPP**, **WAMP**, **LAMP**)

### 📦 Setup Instructions:

  ## 🧑‍💻 How to Run the Project:

### 📦 1. Clone the Repository

   ```bash
   git clone https://github.com/sohom09/To-do-list-php.git
   cd To-do-list-php
   ```
### 2. Move the folder to your server directory:

  - For XAMPP: C:/xampp/htdocs/

### 3.Start Apache & MySQL via the XAMPP Control Panel.

### 4.Import the Database:
  - Open http://localhost/phpmyadmin
  - Create a new database (e.g., todo)
  - Import todo.sql or todo_db.sql

### 5.Launch the app in your browser:
  - http://localhost/todo-list-app/register.php

### 🔒 Security Notice
  - ⚠️ Passwords are currently stored in plain text (for educational/demo purposes).
  - For production, always use password_hash() and password_verify() in PHP.

### 🌟 Future Improvements
  - 🔒 Add secure password hashing
  - 📂 Support for task categories/tags
  - ⭐ Task priority with filters
  - 🔔 Task reminders via email/notification
  - 🌙 Dark Mode
  - 📱 Mobile version using Flutter or React Native

### 👨‍💻 Author
- Sohom Chakraborty
- 📧 [sohomchakraborty.tigps.2005@gmail.com]
- 🔗 GitHub Profile

### 📃 License
This project is licensed under the MIT License. See the LICENSE file for details.
