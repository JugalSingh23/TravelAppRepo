import pool from "../database.js";
import path from "path";
import { fileURLToPath } from "url";
import { dirname } from "path";
import { GetItinerary } from "../models/itinerarymodel.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);




export const GetItineraryAPI = async (req, res) => {
    console.log("API CALLED")

    try {
        if (req.params.tourid) {
            
           const tourid = req.params.tourid

            const [result] = await GetItinerary(tourid)

            return res.status(200).send(result);

        }
      

    } catch (error) {
        console.log(error)
        return res.json({ message: "Error while fetching Tours data", error });
    }
};
