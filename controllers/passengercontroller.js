import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);


import { InsertPassenger, GetPassengersWithTourID, GetPassengers, GetPassengersWithID, EditPassenger, EditPassengerNoImage } from '../models/passengersmodel.js'
import { GetTours } from '../models/mainmodel.js';
import { GetCategories } from '../models/categoriesmodel.js';
import Razorpay from 'razorpay';



export const GetPassengersAPI = async (req, res) => {

    try {

        if (req.query.tourid) {
            const tourid = req.query.tourid
            const [result] = await GetPassengersWithTourID(tourid)
            // const rows = result[0]
            return res.send(result)


        }

        if (req.query.id) {

            const id = req.query.id

            const [result] = await GetPassengersWithID(id)
            return res.send(result)

        }

        else {

            const [passengers] = await GetPassengers()
            const [tours] = await GetTours()
            const [categorylist] = await GetCategories()

            //adding the categoryname field in tours
            tours.forEach(function (tour) {
                categorylist.forEach(function (cat) {
                    if (tour.category == cat.id) {
                        tour.categoryname = cat.catname
                    }
                })

            })


            console.log(tours)
            //adding tourcatname field in passengers
            passengers.forEach(function (passenger) {
                tours.forEach(function (tour) {
                    if (passenger.tour_id == tour.id) {
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



        // let {amount} = req.body;

        // var instance = new Razorpay({ key_id: 'rzp_test_cO3N0p6sFSMsTJ', key_secret: 'A4x5WtPTauC71aCZH9Qg75IK'})

        // let order = await instance.orders.create({
        //     amount : amount * 100,
        //     currency : "INR",
        //     receipt: "receipt#1",
        // })

        // res.status(201).json({
        //     sucess:true,
        //     order,
        //     amount
        // });


        const result = await InsertPassenger(req.body.name, req.body.phone, req.body.email, req.body.special_reqs, req.body.idproof, req.body.tourid)
        console.log(result)
        return res.status(200).send(result)
    }
    catch (error) {
        return res.json({ message: 'Error while adding passenger', error })
    }


}


export const PostEditPassenger = async (req, res) => {
    console.log(req.body)
    try {

        if(req.body.idproof) {
        console.log("POST RECEIVED IDPROOF EXISTS")
        const idproof = `/images/${req.file.filename}`;


        const result = await EditPassenger(req.body.passid, req.body.name, req.body.phone, req.body.email, req.body.special_reqs, idproof, req.body.tourid)

        return res.status(200).send(result)
        }
        else {
            console.log("POST RECEIVED IDPROOF DOES NOT EXIST")
            
    
    
            const result = await EditPassengerNoImage(req.body.passid, req.body.name, req.body.phone, req.body.email, req.body.special_reqs,req.body.tourid)
    
            return res.status(200).send(result)
        }
    }
    catch (error) {

        return res.status(400).json({ message: 'Error while editing passenger', error: { message: error.message, stack: error.stack } })
    }


}



export const ViewTourPassengersAdmin = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname, '../views', 'viewpassengers.html'));
    }

    catch (error) {

    }
}

export const ViewTransactionsAdmin = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname, '../views', 'viewtransactions.html'));
    }

    catch (error) {

    }
}



export const EditPassengerAdmin = async (req, res) => {
    try {

        return res.sendFile(path.join(__dirname, '../views', 'editpassenger.html'));
    }
    catch (error) {

    }
}


