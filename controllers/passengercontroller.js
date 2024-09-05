import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


import { InsertPassenger, GetPassengersWithTourID, GetPassengers } from '../models/passengersmodel.js'
import { GetTours } from '../models/mainmodel.js';
import { GetCategories } from '../models/categoriesmodel.js';



export const GetPassengersAPI = async (req, res) => {

    try {

        if(req.query.tourid) {
        const tourid = req.query.tourid
        const [result] = await GetPassengersWithTourID(tourid)
        // const rows = result[0]
        return res.send(result)

        
    }
    else{
        
        const [passengers] = await GetPassengers()
        const [tours] = await GetTours()
        const [categorylist] = await GetCategories()

      //adding the categoryname field in tours
        tours.forEach(function (tour) {
            categorylist.forEach(function (cat) {
                if(tour.category == cat.id) {
                    tour.categoryname = cat.catname
                }
            })
    
           })

         

//adding tourcatname field in passengers
        passengers.forEach(function (passenger) {
            tours.forEach(function (tour) {
                if (passenger.tour_id == tour.category) {
                    passenger.tourcatname = tour.categoryname
                    passenger.tourname = tour.tourname
                }
               
            })
        })
        return res.send(passengers)
    }
    }
    catch (error) {
        return res.json({ message: 'Error while fetching passengers', error })
    }

}

export const PostPassenger = async (req, res) => {
    try {

    const imagePath = `/images/${req.file.filename}`;
    await InsertPassenger(req.body.name,req.body.phone,req.body.email, req.body.special_reqs,imagePath,req.body.tourid) 
    return res.status(202).json({ status: 'success', message: 'Passenger Added ' });
}
catch (error) {
    return res.json({ message: 'Error while adding passenger', error })
}


}


export const ViewTourPassengersAdmin = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname,'../views','viewpassengers.html'));
    }
    
    catch(error) {

    }
}