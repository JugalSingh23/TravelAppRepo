import pool from '../database.js'


export const GetItinerary = async (tourid) => {
    const result = await pool.query("SELECT * FROM itinerary WHERE tour_Id = ?",[tourid])
    return result
}

export const GetItineraries = async (tourid) => {
    const result = await pool.query("SELECT * FROM itinerary")
    return result
}

export const AddItinerarymodel = async (day_number,heading,content,tour_id) => {
    const result = await pool.query("INSERT into itinerary (tour_Id,day_number,heading,content) VALUES (?,?,?,?)",[tour_id,day_number,heading,content])
}




