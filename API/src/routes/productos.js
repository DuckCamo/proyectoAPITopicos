const { Router } = require('express');
const router = new Router();
const mysql = require('mysql');

router.get('/', (req, res) => {

    const conection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'api'
    });
    
    conection.connect((error) => {
        if(error) throw error;
        console.log('Conexion exitosa');
    });

    conection.query('SELECT * from productos', (error, datos) => {
        if (error) throw error;
        res.json(datos);
    });

    conection.end();
    
});

router.get('/:id', (req, res) => {

    const { id } = req.params;

    const conection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'api'
    });
    
    conection.connect((error) => {
        if(error) throw error;
        console.log('Conexion exitosa');
    });

    conection.query(`SELECT * from productos where id = ${id}`, (error, datos) => {
        if (error) throw error;
        res.json(datos);
    });

    conection.end();
    
});

module.exports = router;