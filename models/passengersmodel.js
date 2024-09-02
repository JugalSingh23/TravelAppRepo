import pool from '../database.js'

export const GetPassengers = async () => {
    const result = await pool.query("SELECT * FROM passengers",)
    return result
}

export const GetPassengersWithTourID = async (tourid) => {
    const result = await pool.query("SELECT * FROM passengers WHERE tour_id=?",[tourid])
    return result
}

export const InsertPassenger = async (name,phone,email,special_reqs,imagepath,tourid) => {
    const result = await pool.query("INSERT INTO passengers (name, phone, email, special_reqs,idproof,tour_id) VALUES (?, ?, ?, ?, ?, ?)",[name,phone,email,special_reqs,imagepath,tourid])
    return result
}