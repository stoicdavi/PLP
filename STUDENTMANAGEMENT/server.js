const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Create a MySQL database connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'Your password here',
    database: 'student_management_system'
});

// Connect to the database
db.connect((err) => {
    if (err) {
        console.error('Error connecting to the database:', err.message);
        return;
    }
    console.log('Connected to database');
});

// Middleware to serve static files
app.use(express.static(__dirname));

// Middleware to parse JSON and URL-encoded data
app.use(express.json());
app.use(bodyParser.json());
app.use(express.urlencoded({ extended: true }));
app.use(bodyParser.urlencoded({ extended: true }));

// Endpoint to add a student
app.post('/addStudent', (req, res) => {
    const { name, age, grade } = req.body; // Corrected from req.body()

    if (!name || !age || !grade) {
        res.status(400).send('Please provide name, age, and grade');
        return;
    }

    const sql = 'INSERT INTO students (name, age, grade) VALUES (?, ?, ?)';
    db.query(sql, [name, age, grade], (err, result) => {
        if (err) {
            console.error('Error adding student:', err.message);
            res.status(500).send('Error adding student');
            return;
        }
        console.log('Student added successfully');
        res.status(200).send('Student added successfully');
    });
});

// Endpoint to get all students
app.get('/getStudents', (req, res) => {
    const sql = 'SELECT * FROM students';
    db.query(sql, (err, result) => {
        if (err) {
            console.error('Error getting students:', err.message);
            res.status(500).send('Error getting students');
            return;
        }
        res.json(result);
    });
});

// Start the server
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
