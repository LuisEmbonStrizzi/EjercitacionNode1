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

const menu = require('./menu.json');

app.use(express.json());

app.get("/", (req, res) => {
    res.send("API running OK...")
});

app.get("/users", (req, res) => {
    res.json(users)
});

app.get("/users/:id", (req, res) => {
    const id = parseInt(req.params.id)

    const user = users.find((user) => user.id === id)

    if (!user)
        res.status(404).send("User not found")
    else
        res.status(200).json(user)
});

//Ejercicio 1
app.get('/menu', (req, res) => {
    res.json(menu)
})

//Ejercicio 2
app.get('/menu/:id', (req, res) => {
    const id = parseInt(req.params.id)

    const plato = menu.find((plato => plato.id === id))

    if (!plato)
        res.status(404).send("Dish not found")
    else
        res.status(200).json(plato)

})

//Ejercicio 3

app.get('/principales', (req, res) => {
    const plato_principal = menu.filter((menu) => menu.tipo === 'principal')

    res.json(plato_principal)
})

//Ejercicio 4
app.get('/postres', (req, res) => {
    const postres = menu.filter((menu) => menu.tipo === 'postre')

    res.json(postres)
})

//Ejercicio 5
app.get('/bebidas', (req, res) => {
    const bebidas = menu.filter((menu) => menu.tipo === 'bebida')

    res.json(bebidas)
})

//Ejercicio 6

app.post('/pedido', (req, res) => {
    const pedido = req.body.productos

    const precio = pedido.reduce((precio_total, plato) => {
        const precioPlato = menu.find((plato_menu) => plato_menu.id === plato.id)
        return precio_total + precioPlato.precio * plato.cantidad
    }, 0)

    res.json({"msj": "Pedido recibido", "precio": precio})
})

app.listen(port, () => {
    console.log(`> Server running on port ${port}`)
});

