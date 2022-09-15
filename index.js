//Clase nacho: Comandos para crear repo (siempre vacío)
//git init (empezar repo)
//git status
//git branch -M main(cambiar de master a main)
//git remote add origin (ruta repo)
//git add .
//git commit -m "feat: first commit"
//git push origin main

const express = require("express");

const app = express();
const port = 9000;

const users = [
    { id: 1, name: "Jane Messi" },
    { id: 2, name: "Jane Mess" },
    { id: 3, name: "Jane Mes" },
    { id: 4, name: "Jane Me" }
]

app.get("/", (req, res) => {
    res.send("API running OK...")
});

app.get("/users", (req, res) => {
    res.json(users)
});

app.get("/users/:id", (req, res) => {
    const id = parseInt(req.params.id)

    const user = users.find((user) => user.id === id)

    if(!user)
        res.status(404).send("User not found")
    else
        res.status(200).json(user)
});

app.listen(port, () => {
    console.log(`> Server running on port ${port}`)
});

