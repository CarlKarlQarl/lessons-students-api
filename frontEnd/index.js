fetch(`http://localhost:3000/students`)
    .then(response => response.json())
    .then(students => students.map(student => {
        const a = document.createElement("h1")

        a.innerHTML = `<a href="show.html?id=${student.id}">${student.name}</a>`

        document.body.appendChild(a)
    }))
    .catch(console.log)