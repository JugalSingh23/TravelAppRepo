import pool from "../database.js";
import path from "path";
import { fileURLToPath } from "url";
import { dirname } from "path";
import { GetItinerary,AddItinerarymodel } from "../models/itinerarymodel.js";

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

export const AddItinerary = async (req, res) => {


    try {

        return res.sendFile(path.join(__dirname, '../views', 'additinerary.html'));

      

    } catch (error) {
        console.log(error)
        return res.json({ message: "Error while fetching Tours data", error });
    }
};

export const AddItineraryAPI = async(req,res) => {

    console.log(req.body)
    console.log('hello')
    try{
        
        const result = await AddItinerarymodel(req.body.day_number,req.body.heading,req.body.content,req.body.tour_Id)

        return res.status(200).json({message : "Itinerary Added Successfully"})
    }
    catch(error) {
        console.log(error)
        return res.status(400).json({ message: "Error while adding itinerary", error });
    }
}

