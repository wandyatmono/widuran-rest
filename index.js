const express = require('express');
const mysql = require('mysql');
const pretty = require('express-prettify');
const sha256 = require('js-sha256').sha256;

const app = express();

app.use(pretty({ query: 'pretty' }));

app.listen('3001', () => {
    console.log('');
    console.log('"PT. WIDURAN" Pharmaceutical Management Information System');
    console.log('REST Server run di PORT: 3001');
});

var db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : 'emd230661',
    database : 'widuran'
});

db.connect((err) => {
    console.log('');
    if (err) {
        console.log('Ada kesalahan, ' + err.sqlMessage + '.');
    } else {
        console.log('Terkoneksi dengan mesin Database ...');
    }
});

app.get('/signin', (req, res) => {
    sql = `SELECT id, name, position, cc, bank_acc, birth_place, birth_date, gender `;
    sql += `FROM widuran.users `;
    sql += `WHERE `;
    sql += `account='` + sha256(req.query.account);
    sql += `' AND password='` + req.query.password + `'`;

    db.query(sql, (err, results) => {
        if (err) {
            throw(err);
        } else {
            if (results > '') {
                res.send(results);
            } else {
                res.send('Tidak ada `akun` yang cocok!');
            }
        }
    });
});

app.get('/signin/html', (req, res) => {
    sql = `SELECT id, name, position, cc, bank_acc, birth_place, birth_date, gender, photo `;
    sql += `FROM widuran.users `;
    sql += `WHERE `;
    sql += `account='` + sha256(req.query.account);
    sql += `' AND password='` + sha256(req.query.password) + `'`;

    db.query(sql, (err, results) => {
        if (err) {
            throw(err);
        } else {
            if (results > '') {
                results = results[0];
                res.writeHead(200, {'content-type': 'text/html'});
                res.write('<div>id: ' + results.id + '</div>');
                res.write('<div>name: ' + results.name + '</div>');
                res.write('<div>position: ' + results.position + '</div>');
                res.write('<div>cc: ' + results.cc + '</div>');
                res.write('<div>birth_place: ' + results.birth_place + '</div>');
                res.write('<div>birth_date: ' + results.birth_date + '</div>');
                res.write('<div>gender: ' + results.gender + '</div>');
                res.write('<div>photo: <br /><img src="' + results.photo + '" alt="Red dot" /></div>');
                res.end();
            } else {
                res.send('Tidak ada `akun` yang cocok!');
            }
        }
    });
});
