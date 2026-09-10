const mysql = require("mysql2/promise")
require("dotenv").config()

const conn = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 5
})

async function ckconn() {
    try {
        const connect = await conn.getConnection()
        console.log("DB Connected");
        connect.release
    } catch (error) {
        console.log("DB_error:", error.message);
    }
}

ckconn()

module.exports = conn