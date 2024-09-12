import pool from '../database.js'
import path from 'path';
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import razorpay from 'razorpay';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

import { InsertPassenger } from '../models/passengersmodel.js';


const razorpayInstance = new razorpay({
    key_id: 'rzp_test_xTtwrgcSagscag',
    key_secret: 'kQySewXrYK30k5j33Qewddjv'
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
                console.log("error")
                return res.status(400).json({
                    status: 'fail',
                    message: `something went wrongggggggggggg : ${error}`,


                })

            }
            else {
                console.log("no errors found heree")
                return res.status(200).json({
                    status: 'success',
                    order_id: order.id,
                    message: 'order created successfully',
                    key_id:'rzp_test_xTtwrgcSagscag',
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