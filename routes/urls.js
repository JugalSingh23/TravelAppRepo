import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import multer from 'multer'


import { GetToursAPI, PostAddTour, PostEditTour, PostDeleteTour } from '../controllers/maincontroller.js';
import { GetPassengersAPI, PostPassenger } from '../controllers/passengercontroller.js';
import { PostLogin, PostRegister } from '../controllers/authcontroller.js';
import {GetCatNameAPI} from '../controllers/categoriescontroller.js';


const router = express.Router();

const __filename = fileURLToPath(import.meta.url); // get the resolved path to the file
const __dirname = path.dirname(__filename); // get the name of the directory

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        const imagePath = path.join(__dirname,'../public/images');
        return cb(null,imagePath)
    },
    filename: function(req,file,cb) {
        return cb(null, `${Date.now()}-${file.originalname}`)
    },  
});

const upload = multer({ storage });


// APIs
router.get('/gettours',GetToursAPI) //use ?category= to get tours a particular category else u will get all tours
router.get('/getpassengers',GetPassengersAPI) // use ?tourid= to get passengers of a particular tour. Else entire passenger list will be returned
router.post('/login',PostLogin) ///use formdata format
router.post('/register',PostRegister) //use formdata format
router.post('/addpassenger',upload.single("idproof"),PostPassenger) //use formdata format

router.post('/addtour',upload.single("banner"),PostAddTour) //use form-data format
router.post('/edittour',upload.single("banner"),PostEditTour) //tested, it works //Both image and no image accepted so image needn't be set to !important //use form-data
router.post('/deletetour',PostDeleteTour) // use ?id= to delete a tour of a particular id //tested it works

router.get('/getcatname',GetCatNameAPI) // use ?id= to select the category whose name you want









export default router;