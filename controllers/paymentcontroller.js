import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import razorpay from 'razorpay';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

import { GetPassengers, InsertPassenger } from '../models/passengersmodel.js';
import {AddTransaction,GetTransactions} from '../models/passengersmodel.js'
import { GetPassengersAPI } from './passengercontroller.js';
import { GetTours } from '../models/mainmodel.js';
import { GetCategories } from '../models/categoriesmodel.js';


const razorpayInstance = new razorpay({
    key_id: 'rzp_test_WGPpc2sLOHmAmE',
    key_secret: 's01XnXAdvxga3qZjnb0GyesO'
})

export const createorder = async (req, res) => {

    try {
        const imagePath = `/images/${req.file.filename}`;
        
        console.log("Create order api called")
        console.log(req.body)
        

        const temparray = req.body.amount.split("/")
       
        let pricevalue = temparray[0].replace('INR ', '').replace(',', '');
       

        const amount = pricevalue //*100 this amount altho razorpay isn't allowing
        console.log("amount : "+amount)
        const currency = req.body.currency;
        const receipt = req.body.receipt
        const data = {
            amount: amount,
            currency: currency,
            receipt: receipt

        }





        razorpayInstance.orders.create(data, (error, order) => {

            if (error) {
                console.log(error)
                return res.status(400).json({
                    status: 'fail',
                    message: `something went wrong while creating order : ${error}`,


                })

            }
            else {
                console.log("no errors found heree")
                return res.status(200).json({
                    status: 'success',
                    order_id: order.id,
                    message: 'order created successfully',
                    key_id:'rzp_test_WGPpc2sLOHmAmE',
                    tourid: req.body.tourid,
                    name: req.body.name,
                    email: req.body.email,
                    phone: req.body.phone,
                    special_reqs: req.body.special_reqs,
                    idproof:imagePath,
                    amount: amount
                    
                    

                })
            }
        })



    }
    catch (error) {
        return res.status(400).json({
            status: 'fail',
            message: `something went wrongggggggggggg : ${error}`

        })
    }
}

export const RenderProducts = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname, '../views', 'renderproducts.html'));
    }
    catch (error) {

    }
}

export const GetThankYou = async (req, res) => {
    try {
        return res.sendFile(path.join(__dirname, '../views', 'thank you.html'));
    }
    catch (error) {

    }
}



export const GetPaymentDetailsAPI= async (req, res) => {
    try {

        const paymentID = req.params.payment_id

        const paymentDetails = await razorpayInstance.payments.fetch(paymentID);
        res.json(paymentDetails)

    }
    catch (error) {

    }
}



export const addtransactionapi = async (req, res) => {
    //itenerary not implemented yet
    try {
        console.log("welcome to add transaction")
        
        const result = await AddTransaction(
            req.body.payment_id,
            req.body.payment_method,
            req.body.amount,
            req.body.passenger_id
        );

        return res.status(200).json({ status: "success", message: "Transaction Added" });
    } catch (error) {
        return res.json({ message: "Error while adding tour", error });
    }
};

export const GetTransactionsAPI = async (req,res) => {
    try{
        console.log('Fetch transactions api called')
        
        const [transactions] = await GetTransactions()
        const [passengers] = await GetPassengers()
         const [tours] = await GetTours();

          //adding the categoryname field in tours
         const [categorylist] = await GetCategories();
         tours.forEach(function (item) {
             categorylist.forEach(function (cat) {
                 if (item.category == cat.id) {
                     item.categoryname = cat.catname
                 }
             })
         })

         
        
        transactions.forEach(function (transaction) {
            passengers.forEach(function (passenger) {
                if(transaction.passenger_id == passenger.passid) {
                    transaction.payer = passenger.name

                    tours.forEach(function (tour) {
                        if (passenger.tour_id == tour.id) {
                            transaction.tourname = tour.tourname
                        }
                    })
                }


                
            })
        })



        return res.status(200).send(transactions)
    }
    catch(error) {
        return res.status(400).json({
            status: 'fail',
            message: `something went wrongggggggggggg : ${error}`

        })
    }
}