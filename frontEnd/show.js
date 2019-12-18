const id = new URLSearchParams(window.location.search).get("id")
const student_div = document.getElementById("student_labels")
const lesson_div = document.getElementById("lesson_labels")
const select = document.querySelector("select")
const hidden_student = document.getElementById("hidden_student")

fetch(`http://localhost:3000/students/${id}`)
    .then(response => response.json())
    .then(student => {
        const nameTag = document.createElement("h1")
        const gradeTag = document.createElement("h2")
        const lessonsTag = document.createElement("h2")

        nameTag.innerText = `Name: ${student.name}`
        gradeTag.innerText = `Grade: ${student.grade}`
        lessonsTag.innerText = `Lessons:`

        student.lessons.map(lesson => {
            const lessonPTag = document.createElement("p")
            lessonPTag.innerText = `${lesson.name} ${lesson.level}`
            lesson_div.appendChild(lessonPTag)
        })
        hidden_student.value = student.id
        student_div.append(nameTag, gradeTag, lessonsTag)
    })
    .catch(error => console.log(error))

fetch(`http://localhost:3000/lessons`)
    .then(response => response.json())
    .then(lessons => lessons.map(lesson => {
        const optionTag = document.createElement("option")
        optionTag.innerText = `${lesson.name} ${lesson.level}`
        optionTag.value = lesson.id
        select.appendChild(optionTag)
    }))
    .catch(error => console.log(error))