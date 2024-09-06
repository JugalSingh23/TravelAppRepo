import pool from '../database.js'


export const GetAdminFromName = async (username) => {
    const result = await pool.query("SELECT * FROM admins WHERE name = ?",[username])
    return result
}

export const InsertAdmin = async (name,password,phone,email) => {
    const result = await pool.query("INSERT INTO admins (name, password, phone, email) VALUES (?, ?, ?, ?)",[name,password,phone,email])
    return result
}