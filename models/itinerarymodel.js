import pool from '../database.js'


export const GetItinerary = async (tourid) => {
    const result = await pool.query("SELECT * FROM itinerary WHERE tour_Id = ?",[tourid])
    return result
}
