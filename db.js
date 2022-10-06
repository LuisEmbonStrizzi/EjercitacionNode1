import mysql from 'mysql2'

export const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'rootroot',
    database: 'menu'
})

connection.connect((err) => {
    if(err) console.log(err);

    else{
        console.log("Estamos corriendo bebe")
    };
})