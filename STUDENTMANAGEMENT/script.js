const form = document.getElementById("studentForm");
const studentList = document.getElementById('studentList');

form.addEventListener('submit', async (e) => {
    e.preventDefault();

    const name = document.getElementById('name').value;
    const age = document.getElementById('age').value;
    const grade = document.getElementById('grade').value;

    const response = await fetch('/addStudent', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ name, age, grade })
    });

    const message = await response.text();
    alert(message);

    if (response.ok) {
        getStudents(); // Corrected the function name
        form.reset();
    }
});

async function getStudents() { // Corrected the function name
    studentList.innerHTML = '';

    const response = await fetch('/getStudents');
    const students = await response.json();

    students.forEach(student => {
        const studentItem = document.createElement('li');
        studentItem.innerHTML = `
            <p>Name: ${student.name}</p>
            <p>Age: ${student.age}</p>
            <p>Grade: ${student.grade}</p>
            <button onclick="editStudent('${student.id}')">Edit</button>
            <button onclick="deleteStudent('${student.id}')">Delete</button>
        `;
        studentList.appendChild(studentItem);
    });
}

async function editStudent(id) {
    // To do
}

async function deleteStudent(id) {
    await fetch(`/deleteStudent/${id}`, {
        method: 'DELETE'
    });
    getStudents(); // Corrected the function name
}

getStudents(); // Corrected the function name
