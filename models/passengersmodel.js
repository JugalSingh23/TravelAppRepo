import pool from '../database.js'

export const GetPassengers = async () => {
    const result = await pool.query("SELECT * FROM passengers",)
    return result
}

export const GetPassengersWithTourID = async (tourid) => {
    const result = await pool.query("SELECT * FROM passengers WHERE tour_id=?",[tourid])
    return result
}

export const GetPassengersWithID = async (id) => {
    const result = await pool.query("SELECT * FROM passengers WHERE passid=?",[id])
    return result
}




export const InsertPassenger = async (name,phone,email,special_reqs,imagepath,tourid) => {
    const [result] = await pool.query("INSERT INTO passengers (name, phone, email, special_reqs,idproof,tour_id) VALUES (?, ?, ?, ?, ?, ?)",[name,phone,email,special_reqs,imagepath,tourid])

  
      return { passengerId: result.insertId, message: "Passenger added successfully" };
}

export const EditPassenger = async (passid,name,phone,email,special_reqs,imagepath,tourid) => {
    const [result] = await pool.query("UPDATE passengers set name = ?, phone = ?,email = ?, special_reqs = ?,idproof=?,tour_id = ? WHERE passid=?",[name,phone,email,special_reqs,imagepath,tourid,passid])

  
      return { result: result, message: "Passenger Edited successfully" };
}


export const EditPassengerNoImage = async (passid,name,phone,email,special_reqs,tourid) => {
    const [result] = await pool.query("UPDATE passengers set name = ?, phone = ?,email = ?, special_reqs = ?,tour_id = ? WHERE passid=?",[name,phone,email,special_reqs,tourid,passid])

  
      return { result: result, message: "Passenger Edited successfully" };
}


export const AddTransaction = async (payment_id,payment_method,amount,passenger_id) => {
    const [result] = await pool.query("INSERT INTO transactions (payment_id, payment_method, amount, passenger_id) VALUES (?, ?, ?, ?)",[payment_id,payment_method,amount,passenger_id])

  
      return result;
}


export const GetTransactions = async () => {
    const result = await pool.query("Select * from transactions")
    return result
}