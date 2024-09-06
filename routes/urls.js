import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';
import multer from 'multer'
import jwt from 'jsonwebtoken'

import { GetToursAPI, PostAddTour, PostEditTour, PostDeleteTour, AddTourAdmin, EditTourAdmin, ViewTourAdmin} from '../controllers/maincontroller.js';
import { GetPassengersAPI, PostPassenger,ViewTourPassengersAdmin } from '../controllers/passengercontroller.js';
import { PostLogin, PostRegister } from '../controllers/authcontroller.js';
import { GetCatNameAPI,AddCategory, GetCategoriesAPI,AddCategoryAdmin } from '../controllers/categoriescontroller.js';
import { PaymentAPI } from '../controllers/paymentcontroller.js';

import {AdminLogin,AdminRegister, AdminRegisterPost, AdminLoginPost,AdminPostLogout} from '../controllers/adminauthcontroller.js'


const router = express.Router();

const __filename = fileURLToPath(import.meta.url); // get the resolved path to the file
const __dirname = path.dirname(__filename); // get the name of the directory


//multer
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

//jwt middleware

function verifyToken(req, res, next) {
const token = req.header('Authorization');
if (!token) return res.status(401).json({ error: 'Access denied' });

try {
 const decoded = jwt.verify(token, 'HexaGNTokenSign1294');
 req.userid = decoded.userId;
 req.useremail = decoded.useremail;
 req.userphone = decoded.userphone;
 next();
 } catch (error) {
 res.status(401).json({ error: 'Invalid token' });
 }
 };


 //admin authe
 export const isAuthenticated = (req, res, next) => {
  
    if (req.session.user) { 
        return next(); 
    }
    // If not authenticated, redirect to login page
    return res.redirect('/admin/login');
};

// APIs

//tour APIs
router.get('/gettours',GetToursAPI) //use ?category= to get tours of a particular category else u will get all tours

router.post('/addtour',upload.single("banner"),PostAddTour) //use form-data format
router.post('/edittour',upload.single("banner"),PostEditTour) //tested, it works //Both image and no image accepted so image needn't be set to !important //use form-data
router.post('/deletetour',PostDeleteTour) // use ?id= to delete a tour of a particular id //tested it works

//Passenger APIs
router.get('/getpassengers',GetPassengersAPI) // use ?tourid= to get passengers of a particular tour. Else entire passenger list will be returned
router.post('/addpassenger',upload.single("idproof"),PostPassenger) //use formdata format

//Auth APIs
router.post('/login',PostLogin) ///use formdata format
router.post('/register',PostRegister) //use formdata format

//Category APIs
router.get('/getcatname',GetCatNameAPI) // use ?id= to select the category whose name you want
router.post('/addcategory',upload.single("banner"),AddCategory) //use form data
router.get('/getcategories',GetCategoriesAPI)


//Admin Pages
router.get('/admin',isAuthenticated,ViewTourAdmin)
router.get('/admin/addtour',AddTourAdmin)
router.get('/admin/edittour/:id',EditTourAdmin)
router.get('/admin/viewtours',ViewTourAdmin)
router.get('/admin/viewpassengers',ViewTourPassengersAdmin)
router.get('/admin/addcategory',AddCategoryAdmin)
router.post('/admin/RegisterAPI',AdminRegisterPost)
router.post('/admin/LoginAPI',AdminLoginPost)
router.get('/admin/logout',AdminPostLogout)


//payment
router.get("/payment",PaymentAPI) 
router.get("/admin/login",AdminLogin)
router.get("/admin/Register",AdminRegister)













export default router;